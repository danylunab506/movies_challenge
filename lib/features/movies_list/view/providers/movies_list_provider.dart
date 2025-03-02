import 'package:flutter/material.dart' show ChangeNotifier, ScrollController;
import 'package:intl/intl.dart';
import 'package:dio/dio.dart';
import 'package:movies_challenge/core/network/errors/api_exception.dart';
import 'package:movies_challenge/global_widgets/app_loading_overlay/notifier_helpers/loading_status_mixin.dart';
import '../../domain/models/movie_light_model.dart';
import '../../domain/repositories/interface/movies_list_repository_interface.dart';
import '../../domain/repositories/movies_list_repository.dart';

class MoviesListProvider extends ChangeNotifier with InitializedLoadingStatusMixin {
  final _format = DateFormat('yyyy-MM-dd');
  late String paramLanguage;
  late String paramSortBy;
  late IMoviesListRepository repository;
  int paramPage = 1;
  int totalPages = 1;
  int totalResults = 0;
  List<MovieLightModel> movies = [];

  String errorMessage = '';

  final ScrollController scrollController = ScrollController();

  void init({required String language}) {
    paramLanguage = language;
    paramSortBy = 'popularity.desc';
    repository = MoviesListRepository();

    scrollController.addListener(_onScroll);
    getPopularMovies();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Future<void> getPopularMovies({bool reset = false}) async {
    loadingStatus.begin();
    try {
      if (reset) {
        paramPage = 1;
        movies = [];
      }
      final result = await repository.getPopularMovies(
        language: paramLanguage,
        page: paramPage,
        sortBy: paramSortBy,
      );

      totalPages = result?.totalPages ?? 0;
      totalResults = result?.totalResults ?? 0;
      movies.addAll(result?.movies ?? []);
      
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

  Future<void> getNowPlayingMovies({bool reset = false}) async {
    loadingStatus.begin();
    try {
      if (reset) {
        paramPage = 0;
      }

      final result = await repository.getNowPlayingMovies(
        language: paramLanguage,
        page: paramPage,
        sortBy: paramSortBy,
        type: 2,
        maxDate: _format.format(DateTime.now()),
        minDate: _format.format(DateTime.now()),
      );

      paramPage = result?.page ?? -1;
      totalPages = result?.totalPages ?? 0;
      totalResults = result?.totalResults ?? 0;
      movies = result?.movies ?? [];

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
}
