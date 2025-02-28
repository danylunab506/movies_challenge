// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoviesResultModel {
  int get page => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<MovieLightModel> get movies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesResultModelCopyWith<MoviesResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResultModelCopyWith<$Res> {
  factory $MoviesResultModelCopyWith(
          MoviesResultModel value, $Res Function(MoviesResultModel) then) =
      _$MoviesResultModelCopyWithImpl<$Res, MoviesResultModel>;
  @useResult
  $Res call(
      {int page,
      int totalPages,
      int totalResults,
      List<MovieLightModel> movies});
}

/// @nodoc
class _$MoviesResultModelCopyWithImpl<$Res, $Val extends MoviesResultModel>
    implements $MoviesResultModelCopyWith<$Res> {
  _$MoviesResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? movies = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieLightModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesResultModelImplCopyWith<$Res>
    implements $MoviesResultModelCopyWith<$Res> {
  factory _$$MoviesResultModelImplCopyWith(_$MoviesResultModelImpl value,
          $Res Function(_$MoviesResultModelImpl) then) =
      __$$MoviesResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int totalPages,
      int totalResults,
      List<MovieLightModel> movies});
}

/// @nodoc
class __$$MoviesResultModelImplCopyWithImpl<$Res>
    extends _$MoviesResultModelCopyWithImpl<$Res, _$MoviesResultModelImpl>
    implements _$$MoviesResultModelImplCopyWith<$Res> {
  __$$MoviesResultModelImplCopyWithImpl(_$MoviesResultModelImpl _value,
      $Res Function(_$MoviesResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? movies = null,
  }) {
    return _then(_$MoviesResultModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieLightModel>,
    ));
  }
}

/// @nodoc

class _$MoviesResultModelImpl extends _MoviesResultModel {
  const _$MoviesResultModelImpl(
      {required this.page,
      required this.totalPages,
      required this.totalResults,
      required final List<MovieLightModel> movies})
      : _movies = movies,
        super._();

  @override
  final int page;
  @override
  final int totalPages;
  @override
  final int totalResults;
  final List<MovieLightModel> _movies;
  @override
  List<MovieLightModel> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MoviesResultModel(page: $page, totalPages: $totalPages, totalResults: $totalResults, movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesResultModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, totalPages, totalResults,
      const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesResultModelImplCopyWith<_$MoviesResultModelImpl> get copyWith =>
      __$$MoviesResultModelImplCopyWithImpl<_$MoviesResultModelImpl>(
          this, _$identity);
}

abstract class _MoviesResultModel extends MoviesResultModel {
  const factory _MoviesResultModel(
      {required final int page,
      required final int totalPages,
      required final int totalResults,
      required final List<MovieLightModel> movies}) = _$MoviesResultModelImpl;
  const _MoviesResultModel._() : super._();

  @override
  int get page;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  List<MovieLightModel> get movies;
  @override
  @JsonKey(ignore: true)
  _$$MoviesResultModelImplCopyWith<_$MoviesResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
