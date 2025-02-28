import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../data/schemas/movie_light_schema.dart';

part 'movie_light_model.freezed.dart';

@freezed
class MovieLightModel with _$MovieLightModel {
  const factory MovieLightModel({
    required String id,
    required String originalLanguage,
    required String originalTitle,
    required String releaseDate,
    required String posterPath,
    required String voteAverage,
  }) = _MovieLightModel;

  const MovieLightModel._();

  factory MovieLightModel.fromSchema({
    required MovieLightSchema schema,
  }) {
    final releaseDateString =
        schema.releaseDate != null && schema.releaseDate!.isNotEmpty
            ? schema.releaseDate!
            : '1900-01-01';
    final releaseDate = DateTime.parse(releaseDateString);

    return MovieLightModel(
      id: schema.id.toString(),
      originalLanguage: schema.originalLanguage ?? '',
      originalTitle: schema.originalTitle ?? '',
      posterPath: schema.posterPath ?? '',
      releaseDate: DateFormat('MMM dd, yyyy').format(releaseDate),
      voteAverage: ((schema.voteAverage ?? 0.0) * 10).round().toString(),
    );
  }
}
