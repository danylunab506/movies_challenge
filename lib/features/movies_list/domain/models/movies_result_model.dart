import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/schemas/movies_list_result_schema.dart';
import 'movie_light_model.dart';

part 'movies_result_model.freezed.dart';

@freezed
class MoviesResultModel with _$MoviesResultModel {
  const factory MoviesResultModel({
    required int page,
    required int totalPages,
    required int totalResults,
    required List<MovieLightModel> movies,
  }) = _MoviesResultModel;

  const MoviesResultModel._();

  factory MoviesResultModel.fromSchema({
    required MoviesListResultSchema schema,
  }) {
    final results = schema.results ?? [];
    final movies = results
        .map((schema) => MovieLightModel.fromSchema(schema: schema))
        .toList();
    return MoviesResultModel(
      page: schema.page,
      totalPages: schema.totalPages ?? 0,
      totalResults: schema.totalResults ?? 0,
      movies: movies,
    );
  }
}
