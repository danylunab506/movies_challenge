// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get originalTitle => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  List<MovieGenreModel> get genres => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  String get releaseYear => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsModelCopyWith<MovieDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsModelCopyWith<$Res> {
  factory $MovieDetailsModelCopyWith(
          MovieDetailsModel value, $Res Function(MovieDetailsModel) then) =
      _$MovieDetailsModelCopyWithImpl<$Res, MovieDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String originalTitle,
      String posterPath,
      List<MovieGenreModel> genres,
      String overview,
      String releaseDate,
      String releaseYear});
}

/// @nodoc
class _$MovieDetailsModelCopyWithImpl<$Res, $Val extends MovieDetailsModel>
    implements $MovieDetailsModelCopyWith<$Res> {
  _$MovieDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? originalTitle = null,
    Object? posterPath = null,
    Object? genres = null,
    Object? overview = null,
    Object? releaseDate = null,
    Object? releaseYear = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieGenreModel>,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseYear: null == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailsModelImplCopyWith<$Res>
    implements $MovieDetailsModelCopyWith<$Res> {
  factory _$$MovieDetailsModelImplCopyWith(_$MovieDetailsModelImpl value,
          $Res Function(_$MovieDetailsModelImpl) then) =
      __$$MovieDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String originalTitle,
      String posterPath,
      List<MovieGenreModel> genres,
      String overview,
      String releaseDate,
      String releaseYear});
}

/// @nodoc
class __$$MovieDetailsModelImplCopyWithImpl<$Res>
    extends _$MovieDetailsModelCopyWithImpl<$Res, _$MovieDetailsModelImpl>
    implements _$$MovieDetailsModelImplCopyWith<$Res> {
  __$$MovieDetailsModelImplCopyWithImpl(_$MovieDetailsModelImpl _value,
      $Res Function(_$MovieDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? originalTitle = null,
    Object? posterPath = null,
    Object? genres = null,
    Object? overview = null,
    Object? releaseDate = null,
    Object? releaseYear = null,
  }) {
    return _then(_$MovieDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieGenreModel>,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseYear: null == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieDetailsModelImpl extends _MovieDetailsModel {
  const _$MovieDetailsModelImpl(
      {required this.id,
      required this.originalTitle,
      required this.posterPath,
      required final List<MovieGenreModel> genres,
      required this.overview,
      required this.releaseDate,
      required this.releaseYear})
      : _genres = genres,
        super._();

  @override
  final int id;
  @override
  final String originalTitle;
  @override
  final String posterPath;
  final List<MovieGenreModel> _genres;
  @override
  List<MovieGenreModel> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String overview;
  @override
  final String releaseDate;
  @override
  final String releaseYear;

  @override
  String toString() {
    return 'MovieDetailsModel(id: $id, originalTitle: $originalTitle, posterPath: $posterPath, genres: $genres, overview: $overview, releaseDate: $releaseDate, releaseYear: $releaseYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseYear, releaseYear) ||
                other.releaseYear == releaseYear));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      originalTitle,
      posterPath,
      const DeepCollectionEquality().hash(_genres),
      overview,
      releaseDate,
      releaseYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsModelImplCopyWith<_$MovieDetailsModelImpl> get copyWith =>
      __$$MovieDetailsModelImplCopyWithImpl<_$MovieDetailsModelImpl>(
          this, _$identity);
}

abstract class _MovieDetailsModel extends MovieDetailsModel {
  const factory _MovieDetailsModel(
      {required final int id,
      required final String originalTitle,
      required final String posterPath,
      required final List<MovieGenreModel> genres,
      required final String overview,
      required final String releaseDate,
      required final String releaseYear}) = _$MovieDetailsModelImpl;
  const _MovieDetailsModel._() : super._();

  @override
  int get id;
  @override
  String get originalTitle;
  @override
  String get posterPath;
  @override
  List<MovieGenreModel> get genres;
  @override
  String get overview;
  @override
  String get releaseDate;
  @override
  String get releaseYear;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailsModelImplCopyWith<_$MovieDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
