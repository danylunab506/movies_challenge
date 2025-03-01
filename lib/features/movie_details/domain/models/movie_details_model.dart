import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../data/schemas/movie_details_schema.dart';
import 'movie_genre_model.dart';

part 'movie_details_model.freezed.dart';

@freezed
class MovieDetailsModel with _$MovieDetailsModel {
  const factory MovieDetailsModel({
    required int id,
    required String originalTitle,
    required String posterPath,
    required List<MovieGenreModel> genres,
    required String overview,
    required String releaseDate,
    required String releaseYear,
  }) = _MovieDetailsModel;

  const MovieDetailsModel._();

  factory MovieDetailsModel.fromSchema({
    required MovieDetailsSchema schema,
  }) {
    final releaseDateString =
        schema.releaseDate != null && schema.releaseDate!.isNotEmpty
            ? schema.releaseDate!
            : '1900-01-01';
    final releaseDate = DateTime.parse(releaseDateString);

    final genres = schema.genres
            ?.map((schema) => MovieGenreModel.fromSchema(schema: schema))
            .toList() ??
        [];

    return MovieDetailsModel(
      id: schema.id,
      originalTitle: schema.originalTitle ?? '',
      posterPath: schema.posterPath ?? '',
      genres: genres,
      overview: schema.overview ?? '',
      releaseDate: DateFormat('MM/dd/yyyy').format(releaseDate),
      releaseYear: releaseDate.year.toString(),
    );
  }
}
