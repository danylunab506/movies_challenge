import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';

import '../schemas/movie_details_schema.dart';

part 'movie_details_api.g.dart';

///
///API services to get the movie details
///
@RestApi(parser: Parser.FlutterCompute)
abstract class MovieDetailsApi {
  factory MovieDetailsApi(Dio dio) = _MovieDetailsApi;

  @GET('/movie/{movieId}')
  Future<MovieDetailsSchema> getMovie({
    @CancelRequest() CancelToken? cancelToken,
    @Path('movieId') required String movieId,
  });
}

MovieDetailsSchema deserializeMovieDetailsSchema(
  Map<String, dynamic> json,
) =>
    MovieDetailsSchema.fromJson(json);
