import 'package:flutter/material.dart';
import 'package:interview_test/core/extension/widgets/auth_header_widget.dart';
import 'package:interview_test/view/authantication/login/login_page.dart';
import 'package:interview_test/view/authantication/signup/signup_page.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final PageController pageController = PageController();

  void animateToPage(PageController controller, int indec) {
    controller.animateToPage(indec,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AuthHeaderWidget(),
            SizedBox(
              height: 600,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                scrollDirection: Axis.horizontal,
                children: [
                  Login(
                    onpressed: () => animateToPage(pageController, 1),
                  ),
                  Signup(
                    openLoginPage: () => animateToPage(pageController, 0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
