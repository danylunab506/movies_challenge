// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_genre_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieGenreModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieGenreModelCopyWith<MovieGenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieGenreModelCopyWith<$Res> {
  factory $MovieGenreModelCopyWith(
          MovieGenreModel value, $Res Function(MovieGenreModel) then) =
      _$MovieGenreModelCopyWithImpl<$Res, MovieGenreModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$MovieGenreModelCopyWithImpl<$Res, $Val extends MovieGenreModel>
    implements $MovieGenreModelCopyWith<$Res> {
  _$MovieGenreModelCopyWithImpl(this._value, this._then);

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
abstract class _$$MovieGenreModelImplCopyWith<$Res>
    implements $MovieGenreModelCopyWith<$Res> {
  factory _$$MovieGenreModelImplCopyWith(_$MovieGenreModelImpl value,
          $Res Function(_$MovieGenreModelImpl) then) =
      __$$MovieGenreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$MovieGenreModelImplCopyWithImpl<$Res>
    extends _$MovieGenreModelCopyWithImpl<$Res, _$MovieGenreModelImpl>
    implements _$$MovieGenreModelImplCopyWith<$Res> {
  __$$MovieGenreModelImplCopyWithImpl(
      _$MovieGenreModelImpl _value, $Res Function(_$MovieGenreModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$MovieGenreModelImpl(
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

class _$MovieGenreModelImpl extends _MovieGenreModel {
  const _$MovieGenreModelImpl({required this.id, required this.name})
      : super._();

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'MovieGenreModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieGenreModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieGenreModelImplCopyWith<_$MovieGenreModelImpl> get copyWith =>
      __$$MovieGenreModelImplCopyWithImpl<_$MovieGenreModelImpl>(
          this, _$identity);
}

abstract class _MovieGenreModel extends MovieGenreModel {
  const factory _MovieGenreModel(
      {required final int id,
      required final String name}) = _$MovieGenreModelImpl;
  const _MovieGenreModel._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$MovieGenreModelImplCopyWith<_$MovieGenreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
