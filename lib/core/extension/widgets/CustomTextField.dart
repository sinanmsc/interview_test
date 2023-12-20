import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_test/core/extension/dynamic_size.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isPassword;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            horizontal: context.width(15), vertical: context.width(15)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(context.width(30)),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(context.width(30)),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: const Color(0xFF1B1B56).withOpacity(0.2),
        label: Text(label),
        hintStyle: TextStyle(
            fontSize: context.width(20),
            color: const Color(0xFF1B1B56),
            fontWeight: FontWeight.bold),
      ),
      style: const TextStyle(fontSize: 20, color: Color(0xFF1B1B56)),
    );
  }
}
