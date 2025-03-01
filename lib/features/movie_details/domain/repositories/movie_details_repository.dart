import 'package:dio/dio.dart';

import '../../data/tasks/movie_details_task.dart';
import '../models/movie_details_model.dart';
import 'interface/movie_details_repository_interface.dart';

class MovieDetailsRepository extends IMovieDetailsRepository {
  CancelToken? cancelToken;

  @override
  Future<MovieDetailsModel?> getMovie({required String movieId}) async {
     if (cancelToken != null) {
      // Cancelling MovieDetailsTask in progress and forcing a new task
      cancelToken?.cancel('Cancelling to force a new MovieDetailsTask');
      cancelToken = null;
    }

    cancelToken = CancelToken();

    try {
      final schema = await MovieDetailsTask(
        movieId: movieId,
      ).run();

      cancelToken = null;

      return MovieDetailsModel.fromSchema(schema: schema);
    } catch (error) {
      // Error running MovieDetailsTask
      cancelToken = null;
      return null;
    }
  }
}
