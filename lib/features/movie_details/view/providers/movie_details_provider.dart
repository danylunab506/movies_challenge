import 'package:flutter/material.dart' show ChangeNotifier;
import 'package:movies_challenge/core/network/errors/api_exception.dart';
import 'package:movies_challenge/global_widgets/app_loading_overlay/notifier_helpers/loading_status_mixin.dart';

import '../../domain/models/movie_details_model.dart';
import '../../domain/repositories/interface/movie_details_repository_interface.dart';
import '../../domain/repositories/movie_details_repository.dart';

class MovieDetailsProvider extends ChangeNotifier with InitializedLoadingStatusMixin {
  late String paramMovieId;
  late IMovieDetailsRepository repository;
  MovieDetailsModel? movie;

  String errorMessage = '';

  void init({required String movieId}) {
    paramMovieId = movieId;
    repository = MovieDetailsRepository();
    getMovie();
  }

  Future<void> getMovie() async {
    loadingStatus.begin();
    try {
      final result = await repository.getMovie(movieId: paramMovieId);
      movie = result;
      notifyListeners();
    } catch (e) {
      if (e is ApiException) {
        errorMessage = e.message;
      } else {
        errorMessage = "Error desconocido";
      }
    } finally {
      loadingStatus.end();
      notifyListeners();
    }
  }
}
