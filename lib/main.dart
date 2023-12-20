import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_test/view/authantication/auth_page.dart';

void main() {
  runApp(const ProviderScope(child: Ecom()));
}

class Ecom extends StatelessWidget {
  const Ecom({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
