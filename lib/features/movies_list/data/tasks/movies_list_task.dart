import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_challenge/shared/interfaces/task_interface.dart';
import 'package:movies_challenge/core/network/errors/api_error_handler.dart';

import '../api/movies_list_api.dart';
import '../schemas/movies_list_result_schema.dart';

///
///Performs the service call to retrieve the list of movies.
///
class MoviesListTask extends ITask {

  final api = MoviesListApi(GetIt.instance<Dio>());

  MoviesListTask({
    required this.language,
    required this.page,
    required this.sortBy,
    this.type,
    this.minDate,
    this.maxDate,
    this.cancelToken,
  });

  final String language;
  final int page;
  final String sortBy;
  final int? type;
  final String? minDate;
  final String? maxDate;

  final CancelToken? cancelToken;

  @override
  Future<MoviesListResultSchema> run() async {
    try {
      final result = await api.getMovies(
        cancelToken: cancelToken,
        language: language,
        page: page,
        sortBy: sortBy,
        type: type,
        minDate: minDate,
        maxDate: maxDate,
      );
      return result;
    } on DioException catch (e) {
      throw ApiErrorHandler.handleError(e);
    }
  }
}
