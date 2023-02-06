import 'package:flutter/material.dart';

class SelectedCustomTheme extends ThemeExtension<SelectedCustomTheme> {
  final BoxDecoration? decoration;
  SelectedCustomTheme({
    required this.decoration,
  });



  @override
  ThemeExtension<SelectedCustomTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<SelectedCustomTheme> lerp(
      ThemeExtension<SelectedCustomTheme>? other, double t) {
    throw UnimplementedError();
  }
}
