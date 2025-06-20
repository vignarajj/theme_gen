import 'package:flutter_test/flutter_test.dart';
import 'package:theme_gen/src/themes/custom_theme_generator.dart';
import 'package:theme_gen/theme_gen.dart';
import 'package:flutter/material.dart';

void main() {
  test('Custom theme generator creates a valid theme string', () {
    final themeCode =
        CustomThemeGenerator.generateTheme('custom_pink', '#FF00FF');
    expect(themeCode, contains('ThemeData'));
    expect(themeCode, contains('custom_pink_lightTheme'));
    expect(themeCode, contains('custom_pink_darkTheme'));
  });

  group('Predefined Themes', () {
    test('Purple light theme has correct colors', () {
      final theme = AppTheme.lightTheme.purple;
      expect(theme.appBarTheme.backgroundColor, Colors.purple);
      expect(theme.floatingActionButtonTheme.backgroundColor, Colors.purple[200]);
    });

    test('Purple dark theme has correct colors', () {
      final theme = AppTheme.darkTheme.purple;
      expect(theme.appBarTheme.backgroundColor, Colors.purple[300]);
      expect(theme.floatingActionButtonTheme.backgroundColor, Colors.purple[700]);
    });

    test('Blue light theme has correct colors', () {
      final theme = AppTheme.lightTheme.blue;
      expect(theme.appBarTheme.backgroundColor, Colors.blue);
      expect(theme.floatingActionButtonTheme.backgroundColor, Colors.blue[200]);
    });

    test('Blue dark theme has correct colors', () {
      final theme = AppTheme.darkTheme.blue;
      expect(theme.appBarTheme.backgroundColor, Colors.blue[300]);
      expect(theme.floatingActionButtonTheme.backgroundColor, Colors.blue[700]);
    });

    test('Red light theme has correct colors', () {
      final theme = AppTheme.lightTheme.red;
      expect(theme.appBarTheme.backgroundColor, Colors.red);
      expect(theme.floatingActionButtonTheme.backgroundColor, Colors.red[200]);
    });

    test('Red dark theme has correct colors', () {
      final theme = AppTheme.darkTheme.red;
      expect(theme.appBarTheme.backgroundColor, Colors.red[300]);
      expect(theme.floatingActionButtonTheme.backgroundColor, Colors.red[700]);
    });

    test('Green light theme has correct colors', () {
      final theme = AppTheme.lightTheme.green;
      expect(theme.appBarTheme.backgroundColor, Colors.green);
      expect(theme.floatingActionButtonTheme.backgroundColor, Colors.green[200]);
    });

    test('Green dark theme has correct colors', () {
      final theme = AppTheme.darkTheme.green;
      expect(theme.appBarTheme.backgroundColor, Colors.green[300]);
      expect(theme.floatingActionButtonTheme.backgroundColor, Colors.green[700]);
    });

    test('Black and White light theme has correct colors', () {
      final theme = AppTheme.lightTheme.blackandwhite;
      expect(theme.appBarTheme.backgroundColor, Colors.black);
      expect(theme.floatingActionButtonTheme.backgroundColor, Colors.grey[300]);
    });

    test('Black and White dark theme has correct colors', () {
      final theme = AppTheme.darkTheme.blackandwhite;
      expect(theme.appBarTheme.backgroundColor, Colors.white);
      expect(theme.floatingActionButtonTheme.backgroundColor, Colors.grey[700]);
    });
  });
}
