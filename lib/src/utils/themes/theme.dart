import 'package:app_login/src/utils/themes/widget_themes/outlined_button_theme.dart';
import 'package:app_login/src/utils/themes/widget_themes/text_field_theme.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import './widget_themes/text_theme.dart';
import './widget_themes/elevated_button_theme.dart';

class AppTheme {
// so that user cannot make the instance of this class
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.amber,
      textTheme: hTextTheme.lightTheme,
      outlinedButtonTheme: hOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: hElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: hTextFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: hTextTheme.DarkTheme,
      outlinedButtonTheme: hOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: hElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: hTextFieldTheme.darkInputDecorationTheme);
}
