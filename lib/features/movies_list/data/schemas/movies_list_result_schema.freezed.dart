// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_list_result_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoviesListResultSchema _$MoviesListResultSchemaFromJson(
    Map<String, dynamic> json) {
  return _MoviesListResultSchema.fromJson(json);
}

/// @nodoc
mixin _$MoviesListResultSchema {
  int get page => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  List<MovieLightSchema>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesListResultSchemaCopyWith<MoviesListResultSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesListResultSchemaCopyWith<$Res> {
  factory $MoviesListResultSchemaCopyWith(MoviesListResultSchema value,
          $Res Function(MoviesListResultSchema) then) =
      _$MoviesListResultSchemaCopyWithImpl<$Res, MoviesListResultSchema>;
  @useResult
  $Res call(
      {int page,
      int? totalPages,
      int? totalResults,
      List<MovieLightSchema>? results});
}

/// @nodoc
class _$MoviesListResultSchemaCopyWithImpl<$Res,
        $Val extends MoviesListResultSchema>
    implements $MoviesListResultSchemaCopyWith<$Res> {
  _$MoviesListResultSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieLightSchema>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesListResultSchemaImplCopyWith<$Res>
    implements $MoviesListResultSchemaCopyWith<$Res> {
  factory _$$MoviesListResultSchemaImplCopyWith(
          _$MoviesListResultSchemaImpl value,
          $Res Function(_$MoviesListResultSchemaImpl) then) =
      __$$MoviesListResultSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int? totalPages,
      int? totalResults,
      List<MovieLightSchema>? results});
}

/// @nodoc
class __$$MoviesListResultSchemaImplCopyWithImpl<$Res>
    extends _$MoviesListResultSchemaCopyWithImpl<$Res,
        _$MoviesListResultSchemaImpl>
    implements _$$MoviesListResultSchemaImplCopyWith<$Res> {
  __$$MoviesListResultSchemaImplCopyWithImpl(
      _$MoviesListResultSchemaImpl _value,
      $Res Function(_$MoviesListResultSchemaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? results = freezed,
  }) {
    return _then(_$MoviesListResultSchemaImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieLightSchema>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MoviesListResultSchemaImpl extends _MoviesListResultSchema {
  const _$MoviesListResultSchemaImpl(
      {required this.page,
      this.totalPages = 0,
      this.totalResults = 0,
      final List<MovieLightSchema>? results = const []})
      : _results = results,
        super._();

  factory _$MoviesListResultSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesListResultSchemaImplFromJson(json);

  @override
  final int page;
  @override
  @JsonKey()
  final int? totalPages;
  @override
  @JsonKey()
  final int? totalResults;
  final List<MovieLightSchema>? _results;
  @override
  @JsonKey()
  List<MovieLightSchema>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MoviesListResultSchema(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesListResultSchemaImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, totalPages, totalResults,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesListResultSchemaImplCopyWith<_$MoviesListResultSchemaImpl>
      get copyWith => __$$MoviesListResultSchemaImplCopyWithImpl<
          _$MoviesListResultSchemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesListResultSchemaImplToJson(
      this,
    );
  }
}

abstract class _MoviesListResultSchema extends MoviesListResultSchema {
  const factory _MoviesListResultSchema(
      {required final int page,
      final int? totalPages,
      final int? totalResults,
      final List<MovieLightSchema>? results}) = _$MoviesListResultSchemaImpl;
  const _MoviesListResultSchema._() : super._();

  factory _MoviesListResultSchema.fromJson(Map<String, dynamic> json) =
      _$MoviesListResultSchemaImpl.fromJson;

  @override
  int get page;
  @override
  int? get totalPages;
  @override
  int? get totalResults;
  @override
  List<MovieLightSchema>? get results;
  @override
  @JsonKey(ignore: true)
  _$$MoviesListResultSchemaImplCopyWith<_$MoviesListResultSchemaImpl>
      get copyWith => throw _privateConstructorUsedError;
}
