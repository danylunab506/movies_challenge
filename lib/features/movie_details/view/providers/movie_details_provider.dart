import 'package:flutter/material.dart' show ChangeNotifier, ValueNotifier;

import '../../domain/models/movie_details_model.dart';
import '../../domain/repositories/interface/movie_details_repository_interface.dart';
import '../../domain/repositories/movie_details_repository.dart';

class MovieDetailsProvider extends ChangeNotifier {
  late String paramMovieId;
  late IMovieDetailsRepository repository;
  MovieDetailsModel? movie;

  final loadingNotifier = ValueNotifier(true);

  void init({required String movieId}) {
    paramMovieId = movieId;
    repository = MovieDetailsRepository();
    getMovie();
  }

  Future<void> getMovie() async {
    try {
      final result = await repository.getMovie(movieId: paramMovieId);

      if (result == null) {
        // TODO: handle error
        loadingNotifier.value = false;
        return;
      }

      movie = result;
      notifyListeners();
    } catch (error) {
      // TODO: handle exception
    }

    loadingNotifier.value = false;
  }
}
