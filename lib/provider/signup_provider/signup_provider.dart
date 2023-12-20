import 'package:flutter/material.dart';
import 'package:interview_test/provider/signup_provider/signup_provider_state.dart';
import 'package:interview_test/service/authentication_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_provider.g.dart';

@Riverpod(keepAlive: true)
class Signup extends _$Signup {
  @override
  SignupProviderState build() {
    return SignupProviderState(
      nameController: TextEditingController(),
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
      isLoading: false,
    );
  }

  void toggleIsLoading() {
    state = state.copyWith(isLoading: !state.isLoading);
  }

  bool checkIsNotEmpty() {
    return state.nameController.text.isNotEmpty &&
        state.emailController.text.isNotEmpty &&
        state.passwordController.text.isNotEmpty;
  }

  Future<String?> signUp() {
    return AuthenticationService.signUp(state.emailController.text,
        state.passwordController.text, state.nameController.text);
  }
}
