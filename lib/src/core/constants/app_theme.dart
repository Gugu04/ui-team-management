import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_team_management/src/core/constants/constants.dart';

class AppTheme {
  static ThemeData ligthTheme = ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: AppColors.black,
      ),
      scaffoldBackgroundColor: AppColors.white,
      inputDecorationTheme: InputDecorationTheme(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13.0),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        fillColor: AppColors.lightGrey,
        filled: true,
        contentPadding: const EdgeInsets.all(5),
        hintStyle: const TextStyle(fontSize: 15),
      ));

  static BoxShadow boxShadowLightBlue() => const BoxShadow(
      offset: Offset(-3, 10), blurRadius: 18, color: AppColors.lightBlue);

  static borderNoBottomRight() => const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      );

  static BoxDecoration borderNoBottomLeft(int color) => BoxDecoration(
      color: Color(color),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ));

  static BoxShadow boxShadowBlue() => BoxShadow(
      color: AppColors.blue.withOpacity(0.45),
      blurRadius: 5,
      spreadRadius: 2.0,
      offset: const Offset(2, 7));

  static List<BoxShadow> selectionBoxshadow({Color color = AppColors.blue}) => [
        BoxShadow(color: color, offset: const Offset(0, 3)),
        BoxShadow(
            color: color.withOpacity(0.25),
            blurRadius: 5,
            spreadRadius: 2.0,
            offset: const Offset(0, 16))
      ];
}
