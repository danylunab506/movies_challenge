import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';

import '../schemas/movies_list_result_schema.dart';

part 'movies_list_api.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class MoviesListApi {

  factory MoviesListApi(Dio dio) = _MoviesListApi;

  @GET(
    '/discover/movie?includeadult=false&include__video=false&language={language}&page={page}&sort_by={sortBy}&with_release_type={type}&release_date.gte={minDate}&release_date.lte={maxDate}',
  )
  Future<MoviesListResultSchema> getMovies({
    @CancelRequest() CancelToken? cancelToken,
    @Path('language') required String language,
    @Path('page') required int page,
    @Path('sortBy') required String sortBy, 
    @Path('with_release_type') int? type,
    @Path('release_date.gte') String? minDate,
    @Path('release_date.lte') String? maxDate,
  });
}

MoviesListResultSchema deserializeMoviesListResultSchema(
  Map<String, dynamic> json,
) =>
    MoviesListResultSchema.fromJson(json);
