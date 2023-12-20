import 'package:flutter/material.dart';

extension DynamicSizeExtension on BuildContext {
  double width(double width) {
    return MediaQuery.sizeOf(this).width * (width / 411);
  }

  double height(double height) {
    return MediaQuery.sizeOf(this).height * (height / 890);
  }
}
