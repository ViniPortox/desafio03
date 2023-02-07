import 'package:flutter/material.dart';

class ChatFilterButtonCustomTheme
    extends ThemeExtension<ChatFilterButtonCustomTheme> {
  final Color? selectedIconColor;
  final TextStyle? selectedTextStyleColor;
  final Color? iconColor;
  final TextStyle? textStyleColor;

  ChatFilterButtonCustomTheme({
    this.selectedIconColor,
    this.selectedTextStyleColor,
    this.iconColor,
    this.textStyleColor,
  });

  @override
  ThemeExtension<ChatFilterButtonCustomTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<ChatFilterButtonCustomTheme> lerp(
      ThemeExtension<ChatFilterButtonCustomTheme>? other, double t) {
    throw UnimplementedError();
  }
}
