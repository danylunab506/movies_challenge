// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_light_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieLightModel {
  String get id => throw _privateConstructorUsedError;
  String get originalLanguage => throw _privateConstructorUsedError;
  String get originalTitle => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  String get voteAverage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieLightModelCopyWith<MovieLightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieLightModelCopyWith<$Res> {
  factory $MovieLightModelCopyWith(
          MovieLightModel value, $Res Function(MovieLightModel) then) =
      _$MovieLightModelCopyWithImpl<$Res, MovieLightModel>;
  @useResult
  $Res call(
      {String id,
      String originalLanguage,
      String originalTitle,
      String releaseDate,
      String posterPath,
      String voteAverage});
}

/// @nodoc
class _$MovieLightModelCopyWithImpl<$Res, $Val extends MovieLightModel>
    implements $MovieLightModelCopyWith<$Res> {
  _$MovieLightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? releaseDate = null,
    Object? posterPath = null,
    Object? voteAverage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieLightModelImplCopyWith<$Res>
    implements $MovieLightModelCopyWith<$Res> {
  factory _$$MovieLightModelImplCopyWith(_$MovieLightModelImpl value,
          $Res Function(_$MovieLightModelImpl) then) =
      __$$MovieLightModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String originalLanguage,
      String originalTitle,
      String releaseDate,
      String posterPath,
      String voteAverage});
}

/// @nodoc
class __$$MovieLightModelImplCopyWithImpl<$Res>
    extends _$MovieLightModelCopyWithImpl<$Res, _$MovieLightModelImpl>
    implements _$$MovieLightModelImplCopyWith<$Res> {
  __$$MovieLightModelImplCopyWithImpl(
      _$MovieLightModelImpl _value, $Res Function(_$MovieLightModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? releaseDate = null,
    Object? posterPath = null,
    Object? voteAverage = null,
  }) {
    return _then(_$MovieLightModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieLightModelImpl extends _MovieLightModel {
  const _$MovieLightModelImpl(
      {required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.releaseDate,
      required this.posterPath,
      required this.voteAverage})
      : super._();

  @override
  final String id;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final String releaseDate;
  @override
  final String posterPath;
  @override
  final String voteAverage;

  @override
  String toString() {
    return 'MovieLightModel(id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, releaseDate: $releaseDate, posterPath: $posterPath, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieLightModelImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, originalLanguage,
      originalTitle, releaseDate, posterPath, voteAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieLightModelImplCopyWith<_$MovieLightModelImpl> get copyWith =>
      __$$MovieLightModelImplCopyWithImpl<_$MovieLightModelImpl>(
          this, _$identity);
}

abstract class _MovieLightModel extends MovieLightModel {
  const factory _MovieLightModel(
      {required final String id,
      required final String originalLanguage,
      required final String originalTitle,
      required final String releaseDate,
      required final String posterPath,
      required final String voteAverage}) = _$MovieLightModelImpl;
  const _MovieLightModel._() : super._();

  @override
  String get id;
  @override
  String get originalLanguage;
  @override
  String get originalTitle;
  @override
  String get releaseDate;
  @override
  String get posterPath;
  @override
  String get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$MovieLightModelImplCopyWith<_$MovieLightModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
