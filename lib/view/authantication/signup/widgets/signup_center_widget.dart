import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_test/core/extension/dynamic_size.dart';
import 'package:interview_test/provider/signup_provider/signup_provider.dart';
import 'package:interview_test/core/extension/widgets/CustomTextField.dart';

class SignupCenterWidget extends ConsumerWidget {
  const SignupCenterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(
          'Register',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: context.width(21),
              color: Colors.black.withOpacity(0.5)),
        ),
        SizedBox(height: context.height(18)),
        CustomTextField(
          label: 'Name',
          controller: ref.watch(signupProvider).nameController,
        ),
        SizedBox(height: context.height(18)),
        CustomTextField(
            label: 'Email',
            controller: ref.watch(signupProvider).emailController),
        SizedBox(height: context.height(18)),
        CustomTextField(
          label: 'Password',
          isPassword: true,
          controller: ref.watch(signupProvider).passwordController,
        ),
      ],
    );
  }
}
