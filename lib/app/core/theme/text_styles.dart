import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './color_theme.dart';

class TextStyles {
  static final textLogo = GoogleFonts.badScript(
    fontSize: 30,
    color: Colors.white,
  );

  static final headline1 = GoogleFonts.josefinSans(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: ColorTheme.primaryTextColor,
  );

  static final body1 = GoogleFonts.josefinSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: ColorTheme.primaryTextColor,
  );

  static final textButtonStyle = GoogleFonts.josefinSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}
