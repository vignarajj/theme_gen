import 'package:flutter/material.dart';
import 'predefined_themes.dart';

class AppTheme {
  AppTheme._();

  static final LightTheme lightTheme = LightTheme();
  static final DarkTheme darkTheme = DarkTheme();
}

class LightTheme {
  final ThemeData blackandwhite = PredefinedThemes.blackAndWhiteLightTheme;
  final ThemeData blue = PredefinedThemes.blueLightTheme;
  final ThemeData red = PredefinedThemes.redLightTheme;
  final ThemeData green = PredefinedThemes.greenLightTheme;
  final ThemeData purple = PredefinedThemes.purpleLightTheme;
}

class DarkTheme {
  final ThemeData blackandwhite = PredefinedThemes.blackAndWhiteDarkTheme;
  final ThemeData blue = PredefinedThemes.blueDarkTheme;
  final ThemeData red = PredefinedThemes.redDarkTheme;
  final ThemeData green = PredefinedThemes.greenDarkTheme;
  final ThemeData purple = PredefinedThemes.purpleDarkTheme;
} 