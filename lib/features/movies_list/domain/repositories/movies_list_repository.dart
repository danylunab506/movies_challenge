import 'package:dio/dio.dart';

import '../../domain/models/movies_result_model.dart';
import '../../domain/repositories/interface/movies_list_repository_interface.dart';
import '../../data/tasks/movies_list_task.dart';

class MoviesListRepository extends IMoviesListRepository {
  CancelToken? cancelToken;

  @override
  Future<MoviesResultModel?> getPopularMovies({
    required String language,
    required int page,
    required String sortBy,
    bool force = false,
  }) async {
    if (cancelToken != null && force) {
      // Cancelling MoviesListTask in progress and forcing a new task
      cancelToken?.cancel('Cancelling to force a new MoviesListTask');
      cancelToken = null;
    } else if (cancelToken != null) {
      // Skipping MoviesListTask, already in progress
      return null;
    }

    cancelToken = CancelToken();

    try {
      final schema = await MoviesListTask(
        language: language,
        page: page,
        sortBy: sortBy,
        cancelToken: cancelToken,
      ).run();

      cancelToken = null;

      return MoviesResultModel.fromSchema(schema: schema);
    } catch (error) {
      // Error running MoviesListTask
      cancelToken = null;
      return null;
    }
  }

  @override
  Future<MoviesResultModel?> getNowPlayingMovies({
    required String language,
    required int page,
    required String sortBy,
    required int type,
    required String minDate,
    required String maxDate,
    bool force = false,
  }) async {
    if (cancelToken != null && force) {
      // Cancelling MoviesListTask in progress and forcing a new task
      cancelToken?.cancel('Cancelling to force a new MoviesListTask');
      cancelToken = null;
    } else {
      // Skipping MoviesListTask, already in progress
      return null;
    }

    cancelToken = CancelToken();

    try {
      final schema = await MoviesListTask(
        language: language,
        page: page,
        sortBy: sortBy,
        type: type,
        minDate: minDate,
        maxDate: maxDate,
        cancelToken: cancelToken,
      ).run();

      return MoviesResultModel.fromSchema(schema: schema);
    } catch (error) {
      // Error running MoviesListTask
      return null;
    }
  }
}
