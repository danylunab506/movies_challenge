import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_challenge/shared/interfaces/task_interface.dart';

import '../api/movie_details_api.dart';
import '../schemas/movie_details_schema.dart';

class MovieDetailsTask extends ITask {
  
  final api = MovieDetailsApi(GetIt.instance<Dio>());

  MovieDetailsTask({
    required this.movieId,
    this.cancelToken,
  });

  final String movieId;

  final CancelToken? cancelToken;

  @override
  Future<MovieDetailsSchema> run() async {
    try {
      final result = await api.getMovie(
        cancelToken: cancelToken,
        movieId: movieId,
      );

      if (cancelToken?.isCancelled == true) {
        throw cancelToken!.cancelError!;
      }

      return result;
    } catch (_) {
      rethrow;
    }
  }
}
