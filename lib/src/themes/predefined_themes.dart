import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PredefinedThemes {
  // Common theme data
  static final ThemeData _commonTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),
  );

  static ThemeData _baseTheme(
      {required Color primaryColor,
      required Color secondaryColor,
      required Color backgroundColor,
      required Color textColor,
      required Brightness brightness}) {
    return _commonTheme.copyWith(
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: primaryColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        secondary: secondaryColor,
        brightness: brightness,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: brightness == Brightness.dark ? Colors.black : Colors.white,
        elevation: 0,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: secondaryColor,
        foregroundColor: Colors.black,
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: textColor),
        bodyMedium: TextStyle(color: textColor),
        displayLarge: TextStyle(color: textColor),
        displayMedium: TextStyle(color: textColor),
        displaySmall: TextStyle(color: textColor),
        headlineMedium: TextStyle(color: textColor),
        headlineSmall: TextStyle(color: textColor),
        titleLarge: TextStyle(color: textColor),
        titleMedium: TextStyle(color: textColor),
        titleSmall: TextStyle(color: textColor),
        bodySmall: TextStyle(color: textColor),
        labelLarge: TextStyle(color: textColor),
        labelSmall: TextStyle(color: textColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: brightness == Brightness.dark ? Colors.black : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: BorderSide(color: primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: primaryColor),
        ),
      ),
      iconTheme: IconThemeData(color: primaryColor),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: primaryColor,
        contentTextStyle: const TextStyle(color: Colors.white),
      ),
    );
  }

  // Black and White Themes
  static final ThemeData blackAndWhiteLightTheme = _baseTheme(
    primaryColor: Colors.black,
    secondaryColor: Colors.grey[300]!,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    brightness: Brightness.light,
  );

  static final ThemeData blackAndWhiteDarkTheme = _baseTheme(
    primaryColor: Colors.white,
    secondaryColor: Colors.grey[700]!,
    backgroundColor: Colors.black,
    textColor: Colors.white,
    brightness: Brightness.dark,
  ).copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
  );

  // Blue Themes
  static final ThemeData blueLightTheme = _baseTheme(
    primaryColor: Colors.blue,
    secondaryColor: Colors.blue[200]!,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    brightness: Brightness.light,
  );

  static final ThemeData blueDarkTheme = _baseTheme(
    primaryColor: Colors.blue[300]!,
    secondaryColor: Colors.blue[700]!,
    backgroundColor: HexColor("#121212"),
    textColor: Colors.white,
    brightness: Brightness.dark,
  );

  // Red Themes
  static final ThemeData redLightTheme = _baseTheme(
    primaryColor: Colors.red,
    secondaryColor: Colors.red[200]!,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    brightness: Brightness.light,
  );

  static final ThemeData redDarkTheme = _baseTheme(
    primaryColor: Colors.red[300]!,
    secondaryColor: Colors.red[700]!,
    backgroundColor: HexColor("#121212"),
    textColor: Colors.white,
    brightness: Brightness.dark,
  );

  // Green Themes
  static final ThemeData greenLightTheme = _baseTheme(
    primaryColor: Colors.green,
    secondaryColor: Colors.green[200]!,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    brightness: Brightness.light,
  );

  static final ThemeData greenDarkTheme = _baseTheme(
    primaryColor: Colors.green[300]!,
    secondaryColor: Colors.green[700]!,
    backgroundColor: HexColor("#121212"),
    textColor: Colors.white,
    brightness: Brightness.dark,
  );

  // Purple Themes
  static final ThemeData purpleLightTheme = _baseTheme(
    primaryColor: Colors.purple,
    secondaryColor: Colors.purple[200]!,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    brightness: Brightness.light,
  );

  static final ThemeData purpleDarkTheme = _baseTheme(
    primaryColor: Colors.purple[300]!,
    secondaryColor: Colors.purple[700]!,
    backgroundColor: HexColor("#121212"),
    textColor: Colors.white,
    brightness: Brightness.dark,
  );
} 