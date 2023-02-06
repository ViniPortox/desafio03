import 'package:flutter/material.dart';

class SearchCustomTheme extends ThemeExtension<SearchCustomTheme> {
  final BoxDecoration? containerDecoration;
  final InputDecoration? textFieldDecoration;
  
  SearchCustomTheme({
    required this.containerDecoration,
    required this.textFieldDecoration,
  });

 

  @override
  ThemeExtension<SearchCustomTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<SearchCustomTheme> lerp(
      ThemeExtension<SearchCustomTheme>? other, double t) {
    throw UnimplementedError();
  }
}
