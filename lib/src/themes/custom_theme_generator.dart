import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class CustomThemeGenerator {
  static String generateTheme(String themeName, String hexColor) {
    final color = HexColor(hexColor);
    final lightTheme = _generateLightTheme(color);
    final darkTheme = _generateDarkTheme(color);

    final snakeCaseThemeName = themeName.replaceAll(' ', '_').toLowerCase();

    return '''
import 'package:flutter/material.dart';

final ThemeData ${snakeCaseThemeName}_lightTheme = ThemeData(
${_themeDataToString(lightTheme)}
);

final ThemeData ${snakeCaseThemeName}_darkTheme = ThemeData(
${_themeDataToString(darkTheme)}
);
''';
  }

  static ThemeData _generateLightTheme(Color color) {
    return ThemeData.light().copyWith(
      primaryColor: color,
      appBarTheme: AppBarTheme(
        backgroundColor: color,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: color,
        foregroundColor: Colors.black,
      ),
    );
  }

  static ThemeData _generateDarkTheme(Color color) {
    return ThemeData.dark().copyWith(
      primaryColor: color,
      appBarTheme: AppBarTheme(
        backgroundColor: color,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: color,
        foregroundColor: Colors.black,
      ),
    );
  }

  static String _themeDataToString(ThemeData themeData) {
    return '''
  primaryColor: ${themeData.primaryColor},
  appBarTheme: const AppBarTheme(
    backgroundColor: ${themeData.appBarTheme.backgroundColor},
    foregroundColor: ${themeData.appBarTheme.foregroundColor},
    elevation: ${themeData.appBarTheme.elevation},
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: ${themeData.floatingActionButtonTheme.backgroundColor},
    foregroundColor: ${themeData.floatingActionButtonTheme.foregroundColor},
  ),
''';
  }
} 