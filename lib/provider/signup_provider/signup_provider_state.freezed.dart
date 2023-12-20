// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupProviderState {
  TextEditingController get nameController =>
      throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupProviderStateCopyWith<SignupProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupProviderStateCopyWith<$Res> {
  factory $SignupProviderStateCopyWith(
          SignupProviderState value, $Res Function(SignupProviderState) then) =
      _$SignupProviderStateCopyWithImpl<$Res, SignupProviderState>;
  @useResult
  $Res call(
      {TextEditingController nameController,
      TextEditingController emailController,
      TextEditingController passwordController,
      bool isLoading});
}

/// @nodoc
class _$SignupProviderStateCopyWithImpl<$Res, $Val extends SignupProviderState>
    implements $SignupProviderStateCopyWith<$Res> {
  _$SignupProviderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameController = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupProviderStateImplCopyWith<$Res>
    implements $SignupProviderStateCopyWith<$Res> {
  factory _$$SignupProviderStateImplCopyWith(_$SignupProviderStateImpl value,
          $Res Function(_$SignupProviderStateImpl) then) =
      __$$SignupProviderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController nameController,
      TextEditingController emailController,
      TextEditingController passwordController,
      bool isLoading});
}

/// @nodoc
class __$$SignupProviderStateImplCopyWithImpl<$Res>
    extends _$SignupProviderStateCopyWithImpl<$Res, _$SignupProviderStateImpl>
    implements _$$SignupProviderStateImplCopyWith<$Res> {
  __$$SignupProviderStateImplCopyWithImpl(_$SignupProviderStateImpl _value,
      $Res Function(_$SignupProviderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameController = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? isLoading = null,
  }) {
    return _then(_$SignupProviderStateImpl(
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignupProviderStateImpl implements _SignupProviderState {
  _$SignupProviderStateImpl(
      {required this.nameController,
      required this.emailController,
      required this.passwordController,
      required this.isLoading});

  @override
  final TextEditingController nameController;
  @override
  final TextEditingController emailController;
  @override
  final TextEditingController passwordController;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SignupProviderState(nameController: $nameController, emailController: $emailController, passwordController: $passwordController, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupProviderStateImpl &&
            (identical(other.nameController, nameController) ||
                other.nameController == nameController) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameController, emailController,
      passwordController, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupProviderStateImplCopyWith<_$SignupProviderStateImpl> get copyWith =>
      __$$SignupProviderStateImplCopyWithImpl<_$SignupProviderStateImpl>(
          this, _$identity);
}

abstract class _SignupProviderState implements SignupProviderState {
  factory _SignupProviderState(
      {required final TextEditingController nameController,
      required final TextEditingController emailController,
      required final TextEditingController passwordController,
      required final bool isLoading}) = _$SignupProviderStateImpl;

  @override
  TextEditingController get nameController;
  @override
  TextEditingController get emailController;
  @override
  TextEditingController get passwordController;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$SignupProviderStateImplCopyWith<_$SignupProviderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
