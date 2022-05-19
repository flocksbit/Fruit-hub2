import 'package:flutter/material.dart';

import './styles/elevated_button_theme_data_custom.dart';
import './styles/input_decoration_theme_custom.dart';
import './color_theme.dart';

class AppTheme {
  static final themeCustom = ThemeData(
    useMaterial3: true,
    primaryColor: ColorTheme.primaryColor,
    scaffoldBackgroundColor: const Color(0XFFE5E5E5),
    elevatedButtonTheme: ElevatedButtonThemeDataCustom.buttonThemeDataCustom,
    inputDecorationTheme: InputDecorarionThemeCustom.inputDecorationThemeCustom,
  );
}
