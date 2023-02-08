import 'package:flutter/material.dart';
import 'extensions/colors_theme.dart';
import 'extensions/text_style_theme.dart';

ThemeData getDarkTheme() {
  // background mudar
  final colorsTheme = ColorsTheme(
    backgroundColor: const Color(0xff20232B),
    primaryColor: const Color(0xff7D8186),
    secundaryColor: const Color(0xff20232B),
    terciaryColor: const Color(0xffB785F5),
    backgroundInfoColor: const Color(0xff5852D6),
    backgroundSelectedColor: const Color(0xffF3FC8A),
    badgeSelectedColor: const Color(0xff524CC5),
    badgeUnselectedColor: const Color(0xff393D45),
    iconsWhiteColor: Colors.white,
    iconsColor: const Color(0xff919397),
    profileSkilltextColor: const Color(0xffB6B4FF),
    onlineColor: const Color(0xffA3D731),
    profileIconsAvaliableColor: const Color(0xff6963DB),
    profileIconsUnvaliableColor: const Color(0xff5E59D8),
    blackColor: Colors.black,
    titleColor: Colors.white,
    skillColor: const [
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

      /////// FAZER DESSA FORMA ABAIXOOOOOOOOOOOOO ///////// AAAAAAAAAAAAAAA
      colorsTheme,
      TextStyleTheme(
        badgeWidgetStyle: TextStyle(
          fontSize: 16,
          color: colorsTheme.primaryColor,
        ),
        chatFilterButtonSelectedStyle: TextStyle(
          fontSize: 18,
          color: colorsTheme.blackColor,
        ),
        chatFilterButtonStyle: TextStyle(
          fontSize: 18,
          color: colorsTheme.primaryColor,
        ),
        listTileNumberStyle: TextStyle(
          fontSize: 16,
          color: colorsTheme.primaryColor,
        ),
        listTileMessageStyle: TextStyle(
          fontSize: 18,
          color: colorsTheme.primaryColor,
        ),
        listTilehourStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: colorsTheme.primaryColor,
        ),
        nameSmallStyle: const TextStyle(
          fontSize: 18,
        ),
        nameMediumStyle: const TextStyle(
          fontSize: 20,
        ),
        nameBigStyle: const TextStyle(
          fontSize: 24,
        ),
        searchStyle: TextStyle(
          fontSize: 20,
          color: colorsTheme.primaryColor,
        ),
        profileContainerInfoNumberStyle: TextStyle(
          fontSize: 20,
          color: colorsTheme.profileSkilltextColor,
        ),
        profileContainerInfoDescriptionStyle: TextStyle(
          fontSize: 18,
          color: colorsTheme.profileSkilltextColor,
        ),
        profileSkillStyle: TextStyle(
            color: colorsTheme.profileSkilltextColor,
            fontSize: 18,
          ),
          todoTitleStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  todoDescriptionStyle:  TextStyle(
                    fontSize: 18,
                    color: colorsTheme.primaryColor,
                  ),

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
