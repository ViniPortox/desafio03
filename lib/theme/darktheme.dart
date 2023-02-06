import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'theme_extansion.dart';

ThemeData getDarkTheme() => ThemeData(
      //Brightness
      brightness: Brightness.dark,

      //BottomNavigatorbar,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xff181920),
        selectedItemColor: Color(0xffF2FB88),
        selectedIconTheme: IconThemeData(
          color: Color(0xff152000),
        ),
      ),
      //Icons
      iconTheme: const IconThemeData(color: Colors.white),
      //Appbar
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      //BackgroundColor
      backgroundColor: const Color(0xff5852D6),
      //PopupMenuTheme
      popupMenuTheme: const PopupMenuThemeData(
        color: Color(0xff6059DA),
      ),
      //PrimaryColor
      primaryColor: const Color(0xff16171B),
      extensions: <ThemeExtension<dynamic>>[
        CustomTheme(
          decoration: BoxDecoration(
            color: const Color(0xffF2FB88),
            borderRadius: BorderRadius.circular(14),
          ),
        )
      ],
      //Text
       textTheme: TextTheme(
        titleMedium: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
        ),
        titleSmall: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
        ),
        bodyLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: Color(0xff9FA1A5),
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
        bodyMedium: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: Color(0xff9FA1A5),
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
        bodySmall: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: Color(0xff9FA1A5),
              fontWeight: FontWeight.w500,
              fontSize: 14),
        ),
        caption: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 12),
        ),
      ),
    );
