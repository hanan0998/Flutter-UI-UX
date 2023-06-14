import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class hElevatedButtonTheme {
  hElevatedButtonTheme._();
  /* light */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
                elevation: 0.0,
                  shape: RoundedRectangleBorder(),
                  foregroundColor: HWhiteColor,
                  backgroundColor: hSecondaryColor,
                  side: BorderSide(color: hSecondaryColor),
                  padding: EdgeInsets.symmetric(vertical: hButtonSize)),
  );
  /* dark */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
                elevation: 0.0,
                  shape: RoundedRectangleBorder(),
                  foregroundColor: hSecondaryColor,
                  backgroundColor: HWhiteColor,
                  side: BorderSide(color: hSecondaryColor),
                  padding: EdgeInsets.symmetric(vertical: hButtonSize)),
  );
}