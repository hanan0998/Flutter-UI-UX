import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class hOutlinedButtonTheme {
  hOutlinedButtonTheme._();
/* light */
static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
     style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  foregroundColor: hSecondaryColor,
                  side: BorderSide(color: hSecondaryColor),
                  padding: EdgeInsets.symmetric(vertical: hButtonSize)),
);
/* dark */
static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
     style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  foregroundColor: HWhiteColor,
                  side: BorderSide(color: HWhiteColor),
                  padding: EdgeInsets.symmetric(vertical: hButtonSize)),
);

}