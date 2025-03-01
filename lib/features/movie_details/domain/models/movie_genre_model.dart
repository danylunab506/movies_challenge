import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/schemas/movie_genre_schema.dart';

part 'movie_genre_model.freezed.dart';

@freezed
class MovieGenreModel with _$MovieGenreModel {
  const factory MovieGenreModel({
    required int id,
    required String name,
  }) = _MovieGenreModel;

  const MovieGenreModel._();

  factory MovieGenreModel.fromSchema({
    required MovieGenreSchema schema,
  }) {
    return MovieGenreModel(
      id: schema.id,
      name: schema.name,
    );
  }
}
