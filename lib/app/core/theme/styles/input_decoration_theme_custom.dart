import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:fruit_hub/app/core/theme/color_theme.dart';

class InputDecorarionThemeCustom {
  static final inputDecorationThemeCustom = InputDecorationTheme(
    filled: true,
    fillColor: ColorTheme.backgroundDropdownColor,
    hintStyle: TextStyle(
      color: const Color(0xFFC2BDBD),
      fontFamily: GoogleFonts.josefinSans().fontFamily,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
  );
}
