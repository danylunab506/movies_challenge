// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailsSchemaImpl _$$MovieDetailsSchemaImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailsSchemaImpl(
      id: (json['id'] as num).toInt(),
      originalTitle: json['original_title'] as String? ?? '',
      posterPath: json['poster_path'] as String? ?? '',
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => MovieGenreSchema.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      overview: json['overview'] as String? ?? '',
      releaseDate: json['release_date'] as String? ?? '',
    );

Map<String, dynamic> _$$MovieDetailsSchemaImplToJson(
        _$MovieDetailsSchemaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'genres': instance.genres,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
    };
