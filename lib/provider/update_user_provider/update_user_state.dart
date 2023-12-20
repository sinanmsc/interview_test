import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_state.freezed.dart';

@freezed
class UpdateUserState with _$UpdateUserState {
  factory UpdateUserState({
    required TextEditingController nameController,
    required TextEditingController passwordController,
  }) = _UpdateUserState;
}
