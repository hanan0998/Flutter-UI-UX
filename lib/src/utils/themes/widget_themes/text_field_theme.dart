import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class hTextFieldTheme {
  hTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: hSecondaryColor,
      floatingLabelStyle: TextStyle(color: hSecondaryColor),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: hSecondaryColor, width: 2.0)));
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: hPrimaryColor,
      floatingLabelStyle: TextStyle(color: hPrimaryColor),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: hPrimaryColor, width: 2.0)));
}
