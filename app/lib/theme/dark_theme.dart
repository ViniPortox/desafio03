import 'package:flutter/material.dart';

import 'extensions/colors_theme.dart';
import 'extensions/text_style_theme.dart';

ThemeData getDarkTheme() {

  // background mudar
  final colorsTheme = ColorsTheme(
    colorPrimary: const Color(0xff7D8186),
    colorSecundary: const Color(0xff20232B),
    colorTerciary: const Color(0xffB785F5),
    colorBackgroundInfo: const Color(0xff5852D6),
    colorBackgroundSelected: const Color(0xffF3FC8A),
    colorBadgeSelected: const Color(0xff524CC5),
    colorBadgeUnselected: const Color(0xff393D45),
    colorIconsWhite: Colors.white,
    colorIcons: const Color(0xff919397),
    colorProfileSkilltext: const Color(0xffB6B4FF),
    colorOnline: const Color(0xffA3D731),
    colorProfileIconsAvaliable: const Color(0xff6963DB),
    colorProfileIconsUnvaliable: const Color(0xff5E59D8),
    colorSelectedChild: Colors.black,
    colorTitle: Colors.white,
    colorsSkill: const [
      Color(0xff6963DB),
      Color(0xff454084),
      Color(0xffA5A89A),
      Color(0xff8AA2AA),
      Color(0xff8568A9),
    ],
  );
  return ThemeData(
    //Brightness
    brightness: Brightness.dark,
    //Appbar
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    //font Family
    fontFamily: 'Roboto',
    extensions: <ThemeExtension<dynamic>>[
      //Extension Colors
    colorsTheme,
      TextStyleTheme(
        text: TextStyle(color: colorsTheme.colorBackgroundInfo),
        badgeTextSize: 14,
        smallTextSize: 16,
        mediumTextSize: 18,
        largeTextSize: 20,
        ultraTextSize: 24,
        fontWeightLargeTitle: FontWeight.w500,
        fontWeightUltraTitle: FontWeight.w600,
      )
    ],
    //Text
    // textTheme: TextTheme(
    //   titleMedium: GoogleFonts.roboto(
    //     textStyle: const TextStyle(
    //         color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
    //   ),
    //   titleSmall: GoogleFonts.roboto(
    //     textStyle: const TextStyle(
    //         color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
    //   ),
    //   bodyLarge: GoogleFonts.roboto(
    //     textStyle: const TextStyle(
    //         color: Color(0xff9FA1A5),
    //         fontWeight: FontWeight.w500,
    //         fontSize: 18),
    //   ),
    //   bodyMedium: GoogleFonts.roboto(
    //     textStyle: const TextStyle(
    //         color: Color(0xff9FA1A5),
    //         fontWeight: FontWeight.w500,
    //         fontSize: 16),
    //   ),
    //   bodySmall: GoogleFonts.roboto(
    //     textStyle: const TextStyle(
    //         color: Color(0xff9FA1A5),
    //         fontWeight: FontWeight.w500,
    //         fontSize: 14),
    //   ),
    //   caption: GoogleFonts.roboto(
    //     textStyle: const TextStyle(
    //         color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12),
    //   ),
    // ),
  );
}
