// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetailsSchema _$MovieDetailsSchemaFromJson(Map<String, dynamic> json) {
  return _MovieDetailsSchema.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailsSchema {
  int get id => throw _privateConstructorUsedError;
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get posterPath => throw _privateConstructorUsedError;
  List<MovieGenreSchema>? get genres => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsSchemaCopyWith<MovieDetailsSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsSchemaCopyWith<$Res> {
  factory $MovieDetailsSchemaCopyWith(
          MovieDetailsSchema value, $Res Function(MovieDetailsSchema) then) =
      _$MovieDetailsSchemaCopyWithImpl<$Res, MovieDetailsSchema>;
  @useResult
  $Res call(
      {int id,
      String? originalTitle,
      String? posterPath,
      List<MovieGenreSchema>? genres,
      String? overview,
      String? releaseDate});
}

/// @nodoc
class _$MovieDetailsSchemaCopyWithImpl<$Res, $Val extends MovieDetailsSchema>
    implements $MovieDetailsSchemaCopyWith<$Res> {
  _$MovieDetailsSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? originalTitle = freezed,
    Object? posterPath = freezed,
    Object? genres = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieGenreSchema>?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailsSchemaImplCopyWith<$Res>
    implements $MovieDetailsSchemaCopyWith<$Res> {
  factory _$$MovieDetailsSchemaImplCopyWith(_$MovieDetailsSchemaImpl value,
          $Res Function(_$MovieDetailsSchemaImpl) then) =
      __$$MovieDetailsSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? originalTitle,
      String? posterPath,
      List<MovieGenreSchema>? genres,
      String? overview,
      String? releaseDate});
}

/// @nodoc
class __$$MovieDetailsSchemaImplCopyWithImpl<$Res>
    extends _$MovieDetailsSchemaCopyWithImpl<$Res, _$MovieDetailsSchemaImpl>
    implements _$$MovieDetailsSchemaImplCopyWith<$Res> {
  __$$MovieDetailsSchemaImplCopyWithImpl(_$MovieDetailsSchemaImpl _value,
      $Res Function(_$MovieDetailsSchemaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? originalTitle = freezed,
    Object? posterPath = freezed,
    Object? genres = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$MovieDetailsSchemaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieGenreSchema>?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MovieDetailsSchemaImpl extends _MovieDetailsSchema {
  const _$MovieDetailsSchemaImpl(
      {required this.id,
      this.originalTitle = '',
      this.posterPath = '',
      final List<MovieGenreSchema>? genres = const [],
      this.overview = '',
      this.releaseDate = ''})
      : _genres = genres,
        super._();

  factory _$MovieDetailsSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailsSchemaImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String? originalTitle;
  @override
  @JsonKey()
  final String? posterPath;
  final List<MovieGenreSchema>? _genres;
  @override
  @JsonKey()
  List<MovieGenreSchema>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? overview;
  @override
  @JsonKey()
  final String? releaseDate;

  @override
  String toString() {
    return 'MovieDetailsSchema(id: $id, originalTitle: $originalTitle, posterPath: $posterPath, genres: $genres, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsSchemaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, originalTitle, posterPath,
      const DeepCollectionEquality().hash(_genres), overview, releaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsSchemaImplCopyWith<_$MovieDetailsSchemaImpl> get copyWith =>
      __$$MovieDetailsSchemaImplCopyWithImpl<_$MovieDetailsSchemaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailsSchemaImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailsSchema extends MovieDetailsSchema {
  const factory _MovieDetailsSchema(
      {required final int id,
      final String? originalTitle,
      final String? posterPath,
      final List<MovieGenreSchema>? genres,
      final String? overview,
      final String? releaseDate}) = _$MovieDetailsSchemaImpl;
  const _MovieDetailsSchema._() : super._();

  factory _MovieDetailsSchema.fromJson(Map<String, dynamic> json) =
      _$MovieDetailsSchemaImpl.fromJson;

  @override
  int get id;
  @override
  String? get originalTitle;
  @override
  String? get posterPath;
  @override
  List<MovieGenreSchema>? get genres;
  @override
  String? get overview;
  @override
  String? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailsSchemaImplCopyWith<_$MovieDetailsSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
