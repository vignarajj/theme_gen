import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:theme_kit/theme_kit.dart';

class PredefinedThemes {
  // Common theme data
  static final ThemeData _commonTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dialogTheme: DialogThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
    ),
    cardTheme: const CardThemeData(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
    ),
  );

  static ThemeData _baseTheme(
      {required Color primaryColor,
      required Color secondaryColor,
      required Color backgroundColor,
      required Color textColor,
      required Brightness brightness}) {
    final buttonForegroundColor =
        brightness == Brightness.dark ? Colors.black : Colors.white;
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
        foregroundColor: buttonForegroundColor,
        elevation: 0,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: secondaryColor,
        foregroundColor: Colors.black,
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: textColor, fontSize: 16),
        bodyMedium: TextStyle(color: textColor, fontSize: 14),
        displayLarge: TextStyle(color: textColor, fontSize: 57),
        displayMedium: TextStyle(color: textColor, fontSize: 45),
        displaySmall: TextStyle(color: textColor, fontSize: 36),
        headlineMedium: TextStyle(color: textColor, fontSize: 28),
        headlineSmall: TextStyle(color: textColor, fontSize: 24),
        titleLarge: TextStyle(color: textColor, fontSize: 22),
        titleMedium: TextStyle(color: textColor, fontSize: 16),
        titleSmall: TextStyle(color: textColor, fontSize: 14),
        bodySmall: TextStyle(color: textColor, fontSize: 12),
        labelLarge: TextStyle(color: textColor, fontSize: 14),
        labelSmall: TextStyle(color: textColor, fontSize: 11),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: buttonForegroundColor,
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
        labelStyle: TextStyle(color: textColor.withAlpha(178)),
      ),
      iconTheme: IconThemeData(color: primaryColor),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: primaryColor,
        contentTextStyle: TextStyle(color: buttonForegroundColor),
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: primaryColor),
          ),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: primaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primaryColor,
        unselectedItemColor: textColor.withAlpha(178),
        backgroundColor: backgroundColor,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return textColor.withAlpha(76);
        }),
        checkColor: WidgetStateProperty.all(buttonForegroundColor),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return textColor.withAlpha(76);
        }),
      ),
      badgeTheme: BadgeThemeData(
        backgroundColor: secondaryColor.withAlpha(51),
        textColor: buttonForegroundColor,
      ),
      bannerTheme: MaterialBannerThemeData(
        backgroundColor: secondaryColor.withAlpha(51),
        contentTextStyle: TextStyle(color: textColor),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryColor,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: primaryColor,
        selectionColor: primaryColor.withAlpha(102),
        selectionHandleColor: primaryColor,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: primaryColor,
        titleTextStyle: TextStyle(color: textColor, fontSize: 16),
        subtitleTextStyle:
            TextStyle(color: textColor.withAlpha(178), fontSize: 14),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: secondaryColor.withAlpha(51),
        selectedColor: primaryColor,
        labelStyle: TextStyle(color: textColor),
        secondaryLabelStyle: TextStyle(color: buttonForegroundColor),
        checkmarkColor: buttonForegroundColor,
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: backgroundColor,
        headerBackgroundColor: primaryColor,
        headerForegroundColor: buttonForegroundColor,
        dayForegroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return buttonForegroundColor;
          }
          return textColor;
        }),
        todayForegroundColor: WidgetStateProperty.all(primaryColor),
        yearForegroundColor: WidgetStateProperty.all(textColor),
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: backgroundColor,
        hourMinuteTextColor: textColor,
        hourMinuteColor: secondaryColor.withAlpha(51),
        dayPeriodTextColor: textColor,
        dayPeriodColor: secondaryColor.withAlpha(51),
        dialHandColor: primaryColor,
        dialTextColor: textColor,
      ),
      tooltipTheme: TooltipThemeData(
        preferBelow: false,
        textStyle: TextStyle(color: buttonForegroundColor),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        selectedColor: buttonForegroundColor,
        color: textColor,
        fillColor: primaryColor,
        borderRadius: BorderRadius.circular(8.0),
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