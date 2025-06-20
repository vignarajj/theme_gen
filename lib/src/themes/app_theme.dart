import 'package:flutter/material.dart';
import 'predefined_themes.dart';

class AppTheme {
  AppTheme._();

  static final _LightTheme lightTheme = _LightTheme();
  static final _DarkTheme darkTheme = _DarkTheme();
}

class _LightTheme {
  final ThemeData blackandwhite = PredefinedThemes.blackAndWhiteLightTheme;
  final ThemeData blue = PredefinedThemes.blueLightTheme;
  final ThemeData red = PredefinedThemes.redLightTheme;
  final ThemeData green = PredefinedThemes.greenLightTheme;
  final ThemeData purple = PredefinedThemes.purpleLightTheme;
}

class _DarkTheme {
  final ThemeData blackandwhite = PredefinedThemes.blackAndWhiteDarkTheme;
  final ThemeData blue = PredefinedThemes.blueDarkTheme;
  final ThemeData red = PredefinedThemes.redDarkTheme;
  final ThemeData green = PredefinedThemes.greenDarkTheme;
  final ThemeData purple = PredefinedThemes.purpleDarkTheme;
} 