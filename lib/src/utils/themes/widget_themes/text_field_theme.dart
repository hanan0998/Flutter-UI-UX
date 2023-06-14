import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class hTextFieldTheme {
  hTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: hSecondaryColor,
          floatingLabelStyle: TextStyle(color: hSecondaryColor),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: hSecondaryColor, width: 2.0)));
  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: hPrimaryColor,
          floatingLabelStyle: TextStyle(color: hPrimaryColor),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: hPrimaryColor, width: 2.0)));
}
