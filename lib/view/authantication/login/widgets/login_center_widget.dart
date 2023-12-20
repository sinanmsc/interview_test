import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_test/core/extension/dynamic_size.dart';
import 'package:interview_test/provider/login_provider/login_provider.dart';
import 'package:interview_test/core/extension/widgets/CustomTextField.dart';

class LoginCenterWidget extends ConsumerWidget {
  const LoginCenterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(
          'Login to your account',
          style: TextStyle(
              fontFamily: 'inter',
              fontWeight: FontWeight.bold,
              fontSize: context.width(21),
              color: Colors.black.withOpacity(0.5)),
        ),
        SizedBox(height: context.height(18)),
        CustomTextField(
            controller: ref.watch(loginProvider).email, label: 'Emial'),
        SizedBox(height: context.height(18)),
        CustomTextField(
          controller: ref.watch(loginProvider).password,
          label: 'Password',
          isPassword: true,
        ),
      ],
    );
  }
}
