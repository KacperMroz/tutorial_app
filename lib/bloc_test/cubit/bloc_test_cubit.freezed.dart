// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_test_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocTestState {
  BlocStatus? get status => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlocTestStateCopyWith<BlocTestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocTestStateCopyWith<$Res> {
  factory $BlocTestStateCopyWith(
          BlocTestState value, $Res Function(BlocTestState) then) =
      _$BlocTestStateCopyWithImpl<$Res, BlocTestState>;
  @useResult
  $Res call({BlocStatus? status, double? value});
}

/// @nodoc
class _$BlocTestStateCopyWithImpl<$Res, $Val extends BlocTestState>
    implements $BlocTestStateCopyWith<$Res> {
  _$BlocTestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlocTestStateImplCopyWith<$Res>
    implements $BlocTestStateCopyWith<$Res> {
  factory _$$BlocTestStateImplCopyWith(
          _$BlocTestStateImpl value, $Res Function(_$BlocTestStateImpl) then) =
      __$$BlocTestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus? status, double? value});
}

/// @nodoc
class __$$BlocTestStateImplCopyWithImpl<$Res>
    extends _$BlocTestStateCopyWithImpl<$Res, _$BlocTestStateImpl>
    implements _$$BlocTestStateImplCopyWith<$Res> {
  __$$BlocTestStateImplCopyWithImpl(
      _$BlocTestStateImpl _value, $Res Function(_$BlocTestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? value = freezed,
  }) {
    return _then(_$BlocTestStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$BlocTestStateImpl implements _BlocTestState {
  const _$BlocTestStateImpl({this.status, this.value});

  @override
  final BlocStatus? status;
  @override
  final double? value;

  @override
  String toString() {
    return 'BlocTestState(status: $status, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocTestStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocTestStateImplCopyWith<_$BlocTestStateImpl> get copyWith =>
      __$$BlocTestStateImplCopyWithImpl<_$BlocTestStateImpl>(this, _$identity);
}

abstract class _BlocTestState implements BlocTestState {
  const factory _BlocTestState(
      {final BlocStatus? status, final double? value}) = _$BlocTestStateImpl;

  @override
  BlocStatus? get status;
  @override
  double? get value;
  @override
  @JsonKey(ignore: true)
  _$$BlocTestStateImplCopyWith<_$BlocTestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
