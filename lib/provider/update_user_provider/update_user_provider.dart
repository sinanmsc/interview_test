import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_test/provider/update_user_provider/update_user_state.dart';
import 'package:interview_test/service/authentication_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_user_provider.g.dart';

@riverpod
class UpdateUser extends _$UpdateUser {
  @override
  UpdateUserState build() {
    return UpdateUserState(
        nameController: TextEditingController(),
        passwordController: TextEditingController(),);
  }

  Future<bool> update(WidgetRef ref) async {
    return   AuthenticationService.updateUser(
        state.nameController.text, state.passwordController.text, ref);
  }
}
