import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color darkGrey = const Color(0xffD6D8DE);
  static Color lightGrey = const Color(0xffE9EAED);
  static Color white = const Color(0xffF7F7FA);
  static Color darkBlue = const Color(0xff19196F);
  static Color lightBlue = const Color(0xff3B3BD2);

  static ThemeData defaultTheme(BuildContext context) => ThemeData(
      primaryColor: darkBlue,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: lightBlue,
        brightness: Brightness.light,
      ),
      canvasColor: lightGrey);
}
