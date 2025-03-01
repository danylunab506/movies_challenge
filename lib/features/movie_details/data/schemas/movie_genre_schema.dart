import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_genre_schema.freezed.dart';
part 'movie_genre_schema.g.dart';

@freezed
class MovieGenreSchema with _$MovieGenreSchema {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieGenreSchema({
    required int id,
    required String name,
  }) = _MovieGenreSchema;

  const MovieGenreSchema._();

  factory MovieGenreSchema.fromJson(Map<String, dynamic> json) =>
      _$MovieGenreSchemaFromJson(json);
}
