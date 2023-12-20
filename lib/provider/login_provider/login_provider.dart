import 'package:flutter/material.dart';
import 'package:interview_test/provider/login_provider/login_provider_state.dart';
import 'package:interview_test/service/authentication_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@riverpod
class Login extends _$Login {
  @override
  LoginProviderState build() {
    return LoginProviderState(
      email: TextEditingController(),
      password: TextEditingController(),
      isLoading: false,
    );
  }

  void toggleLoading() {
    state = state.copyWith(isLoading: !state.isLoading);
  }

  bool validateFields() {
    return state.email.text.isNotEmpty && state.password.text.isNotEmpty;
  }

  Future<String?> login() {
    return AuthenticationService.login(
        email: state.email.text, password: state.password.text);
  }
}
