// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_genre_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieGenreSchema _$MovieGenreSchemaFromJson(Map<String, dynamic> json) {
  return _MovieGenreSchema.fromJson(json);
}

/// @nodoc
mixin _$MovieGenreSchema {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieGenreSchemaCopyWith<MovieGenreSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieGenreSchemaCopyWith<$Res> {
  factory $MovieGenreSchemaCopyWith(
          MovieGenreSchema value, $Res Function(MovieGenreSchema) then) =
      _$MovieGenreSchemaCopyWithImpl<$Res, MovieGenreSchema>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$MovieGenreSchemaCopyWithImpl<$Res, $Val extends MovieGenreSchema>
    implements $MovieGenreSchemaCopyWith<$Res> {
  _$MovieGenreSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieGenreSchemaImplCopyWith<$Res>
    implements $MovieGenreSchemaCopyWith<$Res> {
  factory _$$MovieGenreSchemaImplCopyWith(_$MovieGenreSchemaImpl value,
          $Res Function(_$MovieGenreSchemaImpl) then) =
      __$$MovieGenreSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$MovieGenreSchemaImplCopyWithImpl<$Res>
    extends _$MovieGenreSchemaCopyWithImpl<$Res, _$MovieGenreSchemaImpl>
    implements _$$MovieGenreSchemaImplCopyWith<$Res> {
  __$$MovieGenreSchemaImplCopyWithImpl(_$MovieGenreSchemaImpl _value,
      $Res Function(_$MovieGenreSchemaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$MovieGenreSchemaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MovieGenreSchemaImpl extends _MovieGenreSchema {
  const _$MovieGenreSchemaImpl({required this.id, required this.name})
      : super._();

  factory _$MovieGenreSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieGenreSchemaImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'MovieGenreSchema(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieGenreSchemaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieGenreSchemaImplCopyWith<_$MovieGenreSchemaImpl> get copyWith =>
      __$$MovieGenreSchemaImplCopyWithImpl<_$MovieGenreSchemaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieGenreSchemaImplToJson(
      this,
    );
  }
}

abstract class _MovieGenreSchema extends MovieGenreSchema {
  const factory _MovieGenreSchema(
      {required final int id,
      required final String name}) = _$MovieGenreSchemaImpl;
  const _MovieGenreSchema._() : super._();

  factory _MovieGenreSchema.fromJson(Map<String, dynamic> json) =
      _$MovieGenreSchemaImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$MovieGenreSchemaImplCopyWith<_$MovieGenreSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
