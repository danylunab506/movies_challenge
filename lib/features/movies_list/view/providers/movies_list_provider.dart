import 'package:flutter/material.dart' show ChangeNotifier, ScrollController, TextEditingController;
import 'package:dio/dio.dart';
import 'dart:async';
import 'package:movies_challenge/core/network/errors/api_exception.dart';
import 'package:movies_challenge/global_widgets/app_loading_overlay/notifier_helpers/loading_status_mixin.dart';
import '../../domain/models/movie_light_model.dart';
import '../../domain/repositories/interface/movies_list_repository_interface.dart';
import '../../domain/repositories/movies_list_repository.dart';

class MoviesListProvider extends ChangeNotifier with InitializedLoadingStatusMixin {
  late String paramLanguage;
  late String paramSortBy;
  late IMoviesListRepository repository;
  int paramPage = 1;
  int totalPages = 1;
  int totalResults = 0;

  List<MovieLightModel> _localMoviesList = [];
  List<MovieLightModel> moviesList = [];

  String errorMessage = '';

  final ScrollController scrollController = ScrollController();
  Timer? searchTimer;
  final TextEditingController searchTextFieldController = TextEditingController();

  void init({required String language}) {
    paramLanguage = language;
    paramSortBy = 'popularity.desc';
    repository = MoviesListRepository();

    searchTextFieldController.addListener(_searchTextFieldListener);
    scrollController.addListener(_onScroll);
    getPopularMovies();
  }

  @override
  void dispose() {
    scrollController.dispose();
    searchTextFieldController.dispose();
    super.dispose();
  }

  Future<void> getPopularMovies({bool reset = false}) async {
    loadingStatus.begin();
    try {
      if (reset) {
        paramPage = 1;
        _localMoviesList = [];
        moviesList = [];
      }
      final result = await repository.getPopularMovies(
        language: paramLanguage,
        page: paramPage,
        sortBy: paramSortBy,
      );

      totalPages = result?.totalPages ?? 0;
      totalResults = result?.totalResults ?? 0;
      _localMoviesList.addAll(result?.movies ?? []);
      moviesList = _localMoviesList;
      
      paramPage = totalPages > paramPage ? paramPage + 1 : -1;

    } catch (e) {
      if (e is ApiException) {
        errorMessage = e.type != DioExceptionType.cancel  ? e.message : '';
      } else {
        errorMessage = "Error desconocido";
      }
    } finally {
      loadingStatus.end();
      notifyListeners();
    }
  }

  void _onScroll() {
    if(paramPage > 0){
      if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 100) {
        getPopularMovies();
      }
    }
  }

  void _searchTextFieldListener() {
    if (searchTimer?.isActive ?? false) {
      searchTimer?.cancel();
    }
    searchTimer = Timer(Duration(milliseconds: 500), () {
      searchEvent();
    });
  }

  Future<void> searchEvent() async {
    final String search = searchTextFieldController.text.toLowerCase();
    if (search.isEmpty) {
      moviesList = _localMoviesList;
      notifyListeners();
      return;
    }
    List<MovieLightModel> searchResult = [];
    for (MovieLightModel movie in _localMoviesList) {
      if(movie.originalTitle.toLowerCase().contains(search)){
        searchResult.add(movie);
      }
    }
    moviesList = searchResult;
    notifyListeners();
  }
}
