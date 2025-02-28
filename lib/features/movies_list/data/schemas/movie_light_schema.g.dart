// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_light_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieLightSchemaImpl _$$MovieLightSchemaImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieLightSchemaImpl(
      id: (json['id'] as num).toInt(),
      originalLanguage: json['original_language'] as String? ?? '',
      originalTitle: json['original_title'] as String? ?? '',
      releaseDate: json['release_date'] as String? ?? '',
      posterPath: json['poster_path'] as String? ?? '',
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$MovieLightSchemaImplToJson(
        _$MovieLightSchemaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'release_date': instance.releaseDate,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
    };
