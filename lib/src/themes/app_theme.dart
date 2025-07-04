import 'package:flutter/material.dart';
import 'predefined_themes.dart';

class AppTheme {
  const AppTheme._();

  static final light = LightTheme();
  static final dark = DarkTheme();

  static ThemeData getCustomTheme({required Color primaryColor}) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
      primary: primaryColor,
      secondary: primaryColor.withValues(alpha: 0.8),
      tertiary: primaryColor.withValues(alpha: 0.6),
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onTertiary: Colors.white,
      onSurface: Colors.black,
      onSurfaceVariant: Colors.grey.shade700,
      outline: Colors.grey.shade400,
      outlineVariant: Colors.grey.shade300,
      shadow: Colors.black.withValues(alpha: 0.15),
      scrim: Colors.black.withValues(alpha: 0.3),
      inverseSurface: Colors.grey.shade800,
      onInverseSurface: Colors.white,
      inversePrimary: primaryColor.withValues(alpha: 0.7),
      surfaceTint: primaryColor,
      surfaceBright: Colors.grey.shade50,
      surfaceDim: Colors.grey.shade100,
      surfaceContainer: Colors.grey.shade100,
      surfaceContainerHigh: Colors.grey.shade200,
      surfaceContainerHighest: Colors.grey.shade300,
      surfaceContainerLow: Colors.grey.shade50,
      surfaceContainerLowest: Colors.white,
    );
    
    return ThemeData(
      primaryColor: primaryColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(primaryColor),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(primaryColor),
          side: WidgetStateProperty.all(
            BorderSide(color: primaryColor),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(primaryColor),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(primaryColor),
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.hovered)) {
              return primaryColor.withValues(alpha: 0.1);
            }
            return Colors.transparent;
          }),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: primaryColor.withValues(alpha: 0.1),
        selectedColor: primaryColor,
        labelStyle: const TextStyle(color: Colors.black),
        secondaryLabelStyle: const TextStyle(color: Colors.white),
        checkmarkColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      tabBarTheme: TabBarThemeData(
        labelColor: primaryColor,
        unselectedLabelColor: Colors.grey,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: primaryColor,
        inactiveTrackColor: primaryColor.withValues(alpha: 0.3),
        thumbColor: primaryColor,
        overlayColor: primaryColor.withValues(alpha: 0.2),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return Colors.grey.shade400;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor.withValues(alpha: 0.5);
          }
          return Colors.grey.shade300;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return Colors.grey.shade400;
        }),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(color: Colors.black),
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.white,
        elevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
      ),
      listTileTheme: ListTileThemeData(
        iconColor: primaryColor,
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
        subtitleTextStyle: TextStyle(color: Colors.grey.shade600, fontSize: 14),
      ),
      dividerTheme: DividerThemeData(
        color: Colors.grey.shade300,
        thickness: 1,
        space: 1,
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor:
            WidgetStateProperty.all(primaryColor.withValues(alpha: 0.7)),
        trackColor:
            WidgetStateProperty.all(primaryColor.withValues(alpha: 0.1)),
        radius: const Radius.circular(4),
        thickness: WidgetStateProperty.all(8),
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
        textStyle: const TextStyle(color: Colors.white),
        preferBelow: false,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: primaryColor,
        contentTextStyle: const TextStyle(color: Colors.white),
        actionTextColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(color: primaryColor),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedLabelTextStyle: TextStyle(color: primaryColor),
        unselectedLabelTextStyle: const TextStyle(color: Colors.grey),
        indicatorColor: primaryColor.withValues(alpha: 0.2),
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: Colors.white,
        hourMinuteTextColor: Colors.black,
        hourMinuteColor: primaryColor.withValues(alpha: 0.1),
        dayPeriodTextColor: Colors.black,
        dayPeriodColor: primaryColor.withValues(alpha: 0.1),
        dialHandColor: primaryColor,
        dialTextColor: Colors.black,
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: Colors.white,
        headerBackgroundColor: primaryColor,
        headerForegroundColor: Colors.white,
        dayForegroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          }
          return Colors.black;
        }),
        todayForegroundColor: WidgetStateProperty.all(primaryColor),
        yearForegroundColor: WidgetStateProperty.all(Colors.black),
      ),
      expansionTileTheme: ExpansionTileThemeData(
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        iconColor: primaryColor,
        collapsedIconColor: Colors.grey,
        textColor: Colors.black,
        collapsedTextColor: Colors.black,
      ),
      menuTheme: MenuThemeData(
        style: MenuStyle(
          backgroundColor: WidgetStateProperty.all(Colors.white),
          elevation: WidgetStateProperty.all(4),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: primaryColor),
        ),
        labelStyle: TextStyle(color: primaryColor),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: primaryColor,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return Colors.grey.shade200;
        }),
        checkColor: WidgetStateProperty.all(Colors.white),
      ),
      cardTheme: const CardThemeData(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      dialogTheme: const DialogThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }

  static ThemeData getCustomDarkTheme({required Color primaryColor}) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.dark,
      primary: primaryColor,
      secondary: primaryColor.withValues(alpha: 0.8),
      tertiary: primaryColor.withValues(alpha: 0.6),
      surface: Colors.grey.shade900,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onTertiary: Colors.white,
      onSurface: Colors.white,
      onSurfaceVariant: Colors.grey.shade400,
      outline: Colors.grey.shade600,
      outlineVariant: Colors.grey.shade700,
      shadow: Colors.black.withValues(alpha: 0.25),
      scrim: Colors.black.withValues(alpha: 0.5),
      inverseSurface: Colors.grey.shade100,
      onInverseSurface: Colors.black,
      inversePrimary: primaryColor.withValues(alpha: 0.7),
      surfaceTint: primaryColor,
      surfaceBright: Colors.grey.shade700,
      surfaceDim: Colors.black,
      surfaceContainer: Colors.grey.shade800,
      surfaceContainerHigh: Colors.grey.shade700,
      surfaceContainerHighest: Colors.grey.shade600,
      surfaceContainerLow: Colors.grey.shade900,
      surfaceContainerLowest: Colors.black,
    );
    
    return ThemeData(
      primaryColor: primaryColor,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(primaryColor),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(primaryColor),
          side: WidgetStateProperty.all(
            BorderSide(color: primaryColor),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(primaryColor),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(primaryColor),
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.hovered)) {
              return primaryColor.withValues(alpha: 0.2);
            }
            return Colors.transparent;
          }),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: primaryColor.withValues(alpha: 0.2),
        selectedColor: primaryColor,
        labelStyle: const TextStyle(color: Colors.white),
        secondaryLabelStyle: const TextStyle(color: Colors.black),
        checkmarkColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      tabBarTheme: TabBarThemeData(
        labelColor: primaryColor,
        unselectedLabelColor: Colors.grey,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: primaryColor,
        inactiveTrackColor: primaryColor.withValues(alpha: 0.3),
        thumbColor: primaryColor,
        overlayColor: primaryColor.withValues(alpha: 0.2),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return Colors.grey.shade600;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor.withValues(alpha: 0.5);
          }
          return Colors.grey.shade700;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return Colors.grey.shade600;
        }),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: Colors.grey.shade900,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(color: Colors.white),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.grey.shade900,
        elevation: 16,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
      ),
      listTileTheme: ListTileThemeData(
        iconColor: primaryColor,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 16),
        subtitleTextStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
      ),
      dividerTheme: DividerThemeData(
        color: Colors.grey.shade700,
        thickness: 1,
        space: 1,
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor:
            WidgetStateProperty.all(primaryColor.withValues(alpha: 0.7)),
        trackColor:
            WidgetStateProperty.all(primaryColor.withValues(alpha: 0.1)),
        radius: const Radius.circular(4),
        thickness: WidgetStateProperty.all(8),
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
        textStyle: const TextStyle(color: Colors.white),
        preferBelow: false,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: primaryColor,
        contentTextStyle: const TextStyle(color: Colors.white),
        actionTextColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.grey.shade900,
        elevation: 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: Colors.grey.shade900,
        selectedIconTheme: IconThemeData(color: primaryColor),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedLabelTextStyle: TextStyle(color: primaryColor),
        unselectedLabelTextStyle: const TextStyle(color: Colors.grey),
        indicatorColor: primaryColor.withValues(alpha: 0.2),
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: Colors.grey.shade900,
        hourMinuteTextColor: Colors.white,
        hourMinuteColor: primaryColor.withValues(alpha: 0.2),
        dayPeriodTextColor: Colors.white,
        dayPeriodColor: primaryColor.withValues(alpha: 0.2),
        dialHandColor: primaryColor,
        dialTextColor: Colors.white,
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: Colors.grey.shade900,
        headerBackgroundColor: primaryColor,
        headerForegroundColor: Colors.white,
        dayForegroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          }
          return Colors.white;
        }),
        todayForegroundColor: WidgetStateProperty.all(primaryColor),
        yearForegroundColor: WidgetStateProperty.all(Colors.white),
      ),
      expansionTileTheme: ExpansionTileThemeData(
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        iconColor: primaryColor,
        collapsedIconColor: Colors.grey,
        textColor: Colors.white,
        collapsedTextColor: Colors.white,
      ),
      menuTheme: MenuThemeData(
        style: MenuStyle(
          backgroundColor: WidgetStateProperty.all(Colors.grey.shade900),
          elevation: WidgetStateProperty.all(4),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: primaryColor),
        ),
        labelStyle: TextStyle(color: primaryColor),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: primaryColor,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return Colors.grey.shade800;
        }),
        checkColor: WidgetStateProperty.all(Colors.white),
      ),
      cardTheme: CardThemeData(
        color: Colors.grey.shade900,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: Colors.grey.shade900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}

class LightTheme {
  final ThemeData blackAndWhite = PredefinedThemes.blackAndWhiteLightTheme;
  final ThemeData blue = PredefinedThemes.blueLightTheme;
  final ThemeData red = PredefinedThemes.redLightTheme;
  final ThemeData green = PredefinedThemes.greenLightTheme;
  final ThemeData purple = PredefinedThemes.purpleLightTheme;
}

class DarkTheme {
  final ThemeData blackAndWhite = PredefinedThemes.blackAndWhiteDarkTheme;
  final ThemeData blue = PredefinedThemes.blueDarkTheme;
  final ThemeData red = PredefinedThemes.redDarkTheme;
  final ThemeData green = PredefinedThemes.greenDarkTheme;
  final ThemeData purple = PredefinedThemes.purpleDarkTheme;
}
