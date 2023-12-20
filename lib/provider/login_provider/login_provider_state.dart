import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_provider_state.freezed.dart';

@freezed
class LoginProviderState with _$LoginProviderState {
  factory LoginProviderState(
      {required TextEditingController email,
      required TextEditingController password,
      required bool isLoading}) = _LoginProviderState;
}
