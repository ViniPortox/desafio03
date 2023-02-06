import 'package:flutter/material.dart';

class TextStyleTheme extends ThemeExtension<TextStyleTheme> {
  final TextStyle? text;
  final double? badgeTextSize;
  final double? smallTextSize;
  final double? mediumTextSize;
  final double? largeTextSize;
  final double? ultraTextSize;
  final FontWeight? fontWeightLargeTitle;
  final FontWeight? fontWeightUltraTitle;

  TextStyleTheme({
    this.text,
    this.badgeTextSize,
    this.smallTextSize,
    this.mediumTextSize,
    this.largeTextSize,
    this.ultraTextSize,
    this.fontWeightLargeTitle,
    this.fontWeightUltraTitle,
  });

  @override
  ThemeExtension<TextStyleTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<TextStyleTheme> lerp(
      ThemeExtension<TextStyleTheme>? other, double t) {
    throw UnimplementedError();
  }
}
