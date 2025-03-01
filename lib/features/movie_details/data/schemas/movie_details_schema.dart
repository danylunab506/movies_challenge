import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_genre_schema.dart';

part 'movie_details_schema.freezed.dart';
part 'movie_details_schema.g.dart';

@freezed
class MovieDetailsSchema with _$MovieDetailsSchema {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieDetailsSchema({
    required int id,
    @Default('') String? originalTitle,
    @Default('') String? posterPath,
    @Default([]) List<MovieGenreSchema>? genres,
    @Default('') String? overview,
    @Default('') String? releaseDate,
  }) = _MovieDetailsSchema;

  const MovieDetailsSchema._();

  factory MovieDetailsSchema.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsSchemaFromJson(json);
}
