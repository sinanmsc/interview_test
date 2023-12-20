// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginProviderState {
  TextEditingController get email => throw _privateConstructorUsedError;
  TextEditingController get password => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginProviderStateCopyWith<LoginProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginProviderStateCopyWith<$Res> {
  factory $LoginProviderStateCopyWith(
          LoginProviderState value, $Res Function(LoginProviderState) then) =
      _$LoginProviderStateCopyWithImpl<$Res, LoginProviderState>;
  @useResult
  $Res call(
      {TextEditingController email,
      TextEditingController password,
      bool isLoading});
}

/// @nodoc
class _$LoginProviderStateCopyWithImpl<$Res, $Val extends LoginProviderState>
    implements $LoginProviderStateCopyWith<$Res> {
  _$LoginProviderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginProviderStateImplCopyWith<$Res>
    implements $LoginProviderStateCopyWith<$Res> {
  factory _$$LoginProviderStateImplCopyWith(_$LoginProviderStateImpl value,
          $Res Function(_$LoginProviderStateImpl) then) =
      __$$LoginProviderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController email,
      TextEditingController password,
      bool isLoading});
}

/// @nodoc
class __$$LoginProviderStateImplCopyWithImpl<$Res>
    extends _$LoginProviderStateCopyWithImpl<$Res, _$LoginProviderStateImpl>
    implements _$$LoginProviderStateImplCopyWith<$Res> {
  __$$LoginProviderStateImplCopyWithImpl(_$LoginProviderStateImpl _value,
      $Res Function(_$LoginProviderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isLoading = null,
  }) {
    return _then(_$LoginProviderStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginProviderStateImpl implements _LoginProviderState {
  _$LoginProviderStateImpl(
      {required this.email, required this.password, required this.isLoading});

  @override
  final TextEditingController email;
  @override
  final TextEditingController password;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LoginProviderState(email: $email, password: $password, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginProviderStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginProviderStateImplCopyWith<_$LoginProviderStateImpl> get copyWith =>
      __$$LoginProviderStateImplCopyWithImpl<_$LoginProviderStateImpl>(
          this, _$identity);
}

abstract class _LoginProviderState implements LoginProviderState {
  factory _LoginProviderState(
      {required final TextEditingController email,
      required final TextEditingController password,
      required final bool isLoading}) = _$LoginProviderStateImpl;

  @override
  TextEditingController get email;
  @override
  TextEditingController get password;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$LoginProviderStateImplCopyWith<_$LoginProviderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
