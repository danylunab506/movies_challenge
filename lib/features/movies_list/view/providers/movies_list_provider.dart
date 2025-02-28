import 'package:flutter/material.dart' show ChangeNotifier, ValueNotifier;
import 'package:intl/intl.dart';

import '../../domain/models/movie_light_model.dart';
import '../../domain/repositories/interface/movies_list_repository_interface.dart';
import '../../domain/repositories/movies_list_repository.dart';

class MoviesListProvider extends ChangeNotifier {
  final _format = DateFormat('yyyy-MM-dd');
  late String paramLanguage;
  late String paramSortBy;
  late IMoviesListRepository repository;
  int paramPage = 0;
  int totalPages = 0;
  int totalResults = 0;
  List<MovieLightModel> movies = [];

  final loadingNotifier = ValueNotifier(true);

  void init({required String language}) {
    paramLanguage = 'en-US';
    paramSortBy = 'popularity.desc';
    repository = MoviesListRepository();
    getPopularMovies();
  }

  Future<void> getPopularMovies({bool reset = false}) async {
    try {
      if (reset) {
        paramPage = 0;
      }
      final result = await repository.getPopularMovies(
        language: paramLanguage,
        page: paramPage,
        sortBy: paramSortBy,
      );

      if (result == null) {
        // TODO: handle error
        loadingNotifier.value = false;
        return;
      }

      paramPage = result.page;
      totalPages = result.totalPages;
      totalResults = result.totalResults;
      movies = result.movies;

      notifyListeners();
    } catch (error) {
      // TODO: handle exception
    }

    loadingNotifier.value = false;
  }

  Future<void> getNowPlayingMovies({bool reset = false}) async {
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

      if (result == null) {
        // TODO: handle error
        loadingNotifier.value = false;
        return;
      }

      paramPage = result.page;
      totalPages = result.totalPages;
      totalResults = result.totalResults;
      movies = result.movies;

      notifyListeners();
    } catch (error) {
      // TODO: handle exception
    }

    loadingNotifier.value = false;
  }
}
