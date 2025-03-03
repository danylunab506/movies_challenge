import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_light_schema.freezed.dart';
part 'movie_light_schema.g.dart';

///
///Model required to parse the service response for use in the Domain layer.
///

@freezed
class MovieLightSchema with _$MovieLightSchema {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieLightSchema({
    required int id,
    @Default('') String? originalLanguage,
    @Default('') String? originalTitle,
    @Default('') String? releaseDate,
    @Default('') String? posterPath,
    @Default(0.0) double? voteAverage,
  }) = _MovieLightSchema;

  const MovieLightSchema._();

  factory MovieLightSchema.fromJson(Map<String, dynamic> json) =>
      _$MovieLightSchemaFromJson(json);
}
