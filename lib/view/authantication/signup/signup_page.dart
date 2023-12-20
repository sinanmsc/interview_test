import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_test/core/extension/dynamic_size.dart';
import 'package:interview_test/provider/signup_provider/signup_provider.dart';
import 'package:interview_test/view/authantication/signup/widgets/signup_center_widget.dart';
import 'package:interview_test/view/product_page/product_page.dart';

class Signup extends ConsumerWidget {
  final void Function() openLoginPage;
  const Signup({super.key, required this.openLoginPage});

  void signupForRegister(WidgetRef ref, BuildContext context) async {
    ref.read(signupProvider.notifier).toggleIsLoading();
    if (ref.read(signupProvider.notifier).checkIsNotEmpty()) {
      String? token =
          await ref.read(signupProvider.notifier).signUp().then((value) {
        ref.read(signupProvider.notifier).toggleIsLoading();
        return value;
      });
      if (token != null) {
        if (context.mounted) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductPage(),
              ),
              (route) => false);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            const SizedBox(height: 90),
            const SignupCenterWidget(),
            const SizedBox(height: 90),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.teal[50]),
              ),
              onPressed: ref.watch(signupProvider).isLoading
                  ? null
                  : () async => signupForRegister(ref, context),
              child: ref.watch(signupProvider).isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : const Text('Register'),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: context.width(16),
                    ),
                  ),
                  InkWell(
                    onTap: openLoginPage,
                    child: Text(
                      'Log in',
                      style: TextStyle(
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
      ),
    );
  }
}
