import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_test/core/extension/dynamic_size.dart';
import 'package:interview_test/provider/login_provider/login_provider.dart';
import 'package:interview_test/provider/token/token_provider.dart';
import 'package:interview_test/view/authantication/login/widgets/login_center_widget.dart';
import 'package:interview_test/view/product_page/product_page.dart';

class Login extends ConsumerWidget {
  final void Function() onpressed;
  const Login({super.key, required this.onpressed});

  login(WidgetRef ref, BuildContext context) async {
    ref.read(loginProvider.notifier).toggleLoading();
    if (ref.read(loginProvider.notifier).validateFields()) {
      String? token =
          await ref.read(loginProvider.notifier).login().then((value) {
        ref.read(loginProvider.notifier).toggleLoading();
        return value;
      });
      if (token != null) {
        ref.read(tokenProvider.notifier).updateState(token);
        log('token: ${ref.watch(tokenProvider)}');
        if (context.mounted) {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
            builder: (context) {
              return const ProductPage();
            },
          ), (route) => false);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                const SizedBox(height: 90),
                const LoginCenterWidget(),
                const SizedBox(height: 45),
                ElevatedButton(
                  onPressed: ref.watch(loginProvider).isLoading
                      ? null
                      : () async => login(ref, context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[50],
                  ),
                  child: ref.watch(loginProvider).isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        )
                      : const Text("Login"),
                ),
                const SizedBox(height: 45),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: context.width(16),
                        ),
                      ),
                      InkWell(
                        onTap: onpressed,
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w900,
                            fontSize: context.width(16),
                            color: const Color(0xFF1B1B56),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
