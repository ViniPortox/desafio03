import 'package:flutter/material.dart';

class ColorsTheme extends ThemeExtension<ColorsTheme> {
  final Color? colorPrimary;
  final Color? colorSecundary;
  final Color? colorTerciary;
  final Color? colorBackgroundInfo;
  final Color? colorBackgroundSelected;
  final Color? colorSelectedChild;
  final Color? colorIcons;
  final Color? colorIconsWhite;
  final Color? colorBadgeSelected;
  final Color? colorBadgeUnselected;
  final Color? colorTitle;
  final Color? colorOnline;
   final Color? colorProfileSkilltext;
  final Color? colorProfileIconsAvaliable;
  final Color? colorProfileIconsUnvaliable;
  final List<Color>? colorsSkill;

  ColorsTheme({
    this.colorPrimary,
    this.colorSecundary,
    this.colorTerciary,
    this.colorBackgroundInfo,
    this.colorBackgroundSelected,
    this.colorSelectedChild,
    this.colorIconsWhite,
    this.colorIcons,
    this.colorBadgeSelected,
    this.colorBadgeUnselected,
    this.colorTitle,
    this.colorOnline,
    this.colorProfileSkilltext,
    this.colorProfileIconsAvaliable,
    this.colorProfileIconsUnvaliable,
    this.colorsSkill,
  });

  @override
  ThemeExtension<ColorsTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<ColorsTheme> lerp(
      ThemeExtension<ColorsTheme>? other, double t) {
    throw UnimplementedError();
  }
}
