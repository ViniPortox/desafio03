import 'package:flutter/material.dart';

class BadgeWidgetCustomTheme extends ThemeExtension<BadgeWidgetCustomTheme> {
  final Color? selectedBackgroundColor;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  BadgeWidgetCustomTheme(
    {this.selectedBackgroundColor,
    this.backgroundColor,
    this.textStyle,
  });

  @override
  ThemeExtension<BadgeWidgetCustomTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<BadgeWidgetCustomTheme> lerp(
      ThemeExtension<BadgeWidgetCustomTheme>? other, double t) {
    throw UnimplementedError();
  }
}
