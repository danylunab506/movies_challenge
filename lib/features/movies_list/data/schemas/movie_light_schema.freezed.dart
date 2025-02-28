// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_light_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieLightSchema _$MovieLightSchemaFromJson(Map<String, dynamic> json) {
  return _MovieLightSchema.fromJson(json);
}

/// @nodoc
mixin _$MovieLightSchema {
  int get id => throw _privateConstructorUsedError;
  String? get originalLanguage => throw _privateConstructorUsedError;
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get posterPath => throw _privateConstructorUsedError;
  double? get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieLightSchemaCopyWith<MovieLightSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieLightSchemaCopyWith<$Res> {
  factory $MovieLightSchemaCopyWith(
          MovieLightSchema value, $Res Function(MovieLightSchema) then) =
      _$MovieLightSchemaCopyWithImpl<$Res, MovieLightSchema>;
  @useResult
  $Res call(
      {int id,
      String? originalLanguage,
      String? originalTitle,
      String? releaseDate,
      String? posterPath,
      double? voteAverage});
}

/// @nodoc
class _$MovieLightSchemaCopyWithImpl<$Res, $Val extends MovieLightSchema>
    implements $MovieLightSchemaCopyWith<$Res> {
  _$MovieLightSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? releaseDate = freezed,
    Object? posterPath = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieLightSchemaImplCopyWith<$Res>
    implements $MovieLightSchemaCopyWith<$Res> {
  factory _$$MovieLightSchemaImplCopyWith(_$MovieLightSchemaImpl value,
          $Res Function(_$MovieLightSchemaImpl) then) =
      __$$MovieLightSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? originalLanguage,
      String? originalTitle,
      String? releaseDate,
      String? posterPath,
      double? voteAverage});
}

/// @nodoc
class __$$MovieLightSchemaImplCopyWithImpl<$Res>
    extends _$MovieLightSchemaCopyWithImpl<$Res, _$MovieLightSchemaImpl>
    implements _$$MovieLightSchemaImplCopyWith<$Res> {
  __$$MovieLightSchemaImplCopyWithImpl(_$MovieLightSchemaImpl _value,
      $Res Function(_$MovieLightSchemaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? releaseDate = freezed,
    Object? posterPath = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_$MovieLightSchemaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MovieLightSchemaImpl extends _MovieLightSchema {
  const _$MovieLightSchemaImpl(
      {required this.id,
      this.originalLanguage = '',
      this.originalTitle = '',
      this.releaseDate = '',
      this.posterPath = '',
      this.voteAverage = 0.0})
      : super._();

  factory _$MovieLightSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieLightSchemaImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String? originalLanguage;
  @override
  @JsonKey()
  final String? originalTitle;
  @override
  @JsonKey()
  final String? releaseDate;
  @override
  @JsonKey()
  final String? posterPath;
  @override
  @JsonKey()
  final double? voteAverage;

  @override
  String toString() {
    return 'MovieLightSchema(id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, releaseDate: $releaseDate, posterPath: $posterPath, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieLightSchemaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, originalLanguage,
      originalTitle, releaseDate, posterPath, voteAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieLightSchemaImplCopyWith<_$MovieLightSchemaImpl> get copyWith =>
      __$$MovieLightSchemaImplCopyWithImpl<_$MovieLightSchemaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieLightSchemaImplToJson(
      this,
    );
  }
}

abstract class _MovieLightSchema extends MovieLightSchema {
  const factory _MovieLightSchema(
      {required final int id,
      final String? originalLanguage,
      final String? originalTitle,
      final String? releaseDate,
      final String? posterPath,
      final double? voteAverage}) = _$MovieLightSchemaImpl;
  const _MovieLightSchema._() : super._();

  factory _MovieLightSchema.fromJson(Map<String, dynamic> json) =
      _$MovieLightSchemaImpl.fromJson;

  @override
  int get id;
  @override
  String? get originalLanguage;
  @override
  String? get originalTitle;
  @override
  String? get releaseDate;
  @override
  String? get posterPath;
  @override
  double? get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$MovieLightSchemaImplCopyWith<_$MovieLightSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
