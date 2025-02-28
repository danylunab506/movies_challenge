// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_list_result_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesListResultSchemaImpl _$$MoviesListResultSchemaImplFromJson(
        Map<String, dynamic> json) =>
    _$MoviesListResultSchemaImpl(
      page: (json['page'] as num).toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt() ?? 0,
      totalResults: (json['total_results'] as num?)?.toInt() ?? 0,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => MovieLightSchema.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MoviesListResultSchemaImplToJson(
        _$MoviesListResultSchemaImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'results': instance.results,
    };
