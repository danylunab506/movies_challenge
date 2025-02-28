import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_light_schema.dart';

part 'movies_list_result_schema.freezed.dart';
part 'movies_list_result_schema.g.dart';

@freezed
class MoviesListResultSchema with _$MoviesListResultSchema {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MoviesListResultSchema({
    required int page,
    @Default(0) int? totalPages,
    @Default(0) int? totalResults,
    @Default([]) List<MovieLightSchema>? results,
  }) = _MoviesListResultSchema;

  const MoviesListResultSchema._();

  factory MoviesListResultSchema.fromJson(Map<String, dynamic> json) =>
      _$MoviesListResultSchemaFromJson(json);
}
