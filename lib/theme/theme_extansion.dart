import 'package:flutter/material.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final BoxDecoration? decoration;
  CustomTheme({
    required this.decoration,
  });

  /*
  @override
   copyWith(Color? color, BoxDecoration? decoration) =>
    CustomTheme(
        color: color ?? this.color,
        decoration: decoration ?? this.decoration);
  */

  @override
  ThemeExtension<CustomTheme> copyWith() {
   
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomTheme> lerp(
      ThemeExtension<CustomTheme>? other, double t) {
   
    throw UnimplementedError();
  }
}
