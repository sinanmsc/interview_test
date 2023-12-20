import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_provider_state.freezed.dart';

@freezed
class SignupProviderState with _$SignupProviderState {
  factory SignupProviderState({
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required bool isLoading,
  }) = _SignupProviderState;
}
