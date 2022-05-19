import 'package:flutter/material.dart';

import 'package:fruit_hub/app/core/theme/color_theme.dart';

class ElevatedButtonThemeDataCustom {
  static final buttonThemeDataCustom = ElevatedButtonThemeData(
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all(const Size(327, 56)),
      backgroundColor: MaterialStateProperty.all(ColorTheme.primaryButtonColor),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
  );
}
