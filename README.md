<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages). 
-->

# Theme Gen

A Flutter package to simplify theme management with a set of beautiful, predefined themes and a simple API for generating new themes dynamically from a single color.

## Features

- **Predefined Themes**: A collection of ready-to-use themes for both light and dark modes.
- **Dynamic Theme Generation**: Create a full light or dark `ThemeData` object at runtime from any `Color`.
- **Comprehensive Theme Support**: Includes theming for all major Flutter UI components including buttons, input fields, navigation, cards, dialogs, and more.
- **Modern Material Design**: Follows Material 3 design principles with consistent styling across all components.
- **Consistent UI**: Themes are designed to provide a consistent look and feel across all major Flutter widgets.
- **Easy to Use**: A simple, clean API that gets you up and running in seconds.
- **Lint-Free**: No deprecated warnings or lint issues - fully compatible with the latest Flutter versions.

## Supported Theme Components

This package provides comprehensive theming support for:

### Core Components
- AppBar, Scaffold, Cards, Dialogs
- All Button Types (Elevated, Outlined, Text, Icon, Filled)
- Input Fields and Form Components
- Progress Indicators, Sliders, Switches
- Checkboxes, Radio Buttons, Chips

### Navigation & Layout
- Bottom Navigation Bar, Navigation Rail
- Tab Bar, Drawers, List Tiles
- Expansion Tiles, Dividers, Scrollbars

### Overlays & Feedback
- Tooltips, SnackBars, Popup Menus
- Bottom Sheets, Date/Time Pickers
- Menus and Dropdowns

### Visual Elements
- Icons, Badges, Banners
- Text Selection, Floating Action Buttons

All components dynamically adapt their colors and styling based on your chosen primary color while maintaining optimal contrast and accessibility.

## Installation

Add this to your `pubspec.yaml` file's dependencies:

```yaml
dependencies:
  theme_maker: ^1.0.4 # Replace with the latest version
  hexcolor: ^3.0.1 # Required for the example
```

Then, run `flutter pub get` in your terminal.

## Usage

### 1. Using a Predefined Theme

You can easily apply one of the built-in themes to your `MaterialApp`.

```dart
import 'package:flutter/material.dart';
import 'package:theme_maker/theme_maker.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Gen Example',
      // Access light themes
      theme: AppTheme.light.blue,
      // Access dark themes
      darkTheme: AppTheme.dark.blue,
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}
```

**Available Predefined Themes:**

- `AppTheme.light.blue` / `AppTheme.dark.blue`
- `AppTheme.light.red` / `AppTheme.dark.red`
- `AppTheme.light.green` / `AppTheme.dark.green`
- `AppTheme.light.purple` / `AppTheme.dark.purple`
- `AppTheme.light.blackAndWhite` / `AppTheme.dark.blackAndWhite`

### 2. Generating a Custom Theme Dynamically

Create a complete theme on the fly from a single color. This is perfect for letting users select their own theme color.

```dart
import 'package:flutter/material.dart';
import 'package:theme_maker/theme_maker.dart';
import 'package:hexcolor/hexcolor.dart';

class MyDynamicApp extends StatelessWidget {
  const MyDynamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Generate a theme from any color
    final myCustomColor = HexColor('#8e44ad'); // A nice purple

    return MaterialApp(
      title: 'Theme Gen Dynamic Example',
      // Generate the light theme
      theme: AppTheme.getCustomTheme(primaryColor: myCustomColor),
      // Generate the dark theme
      darkTheme: AppTheme.getCustomDarkTheme(primaryColor: myCustomColor),
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}
```

### Complete Theme Coverage

Every generated theme includes styling for:

```dart
// Example of what's included in every theme
ThemeData customTheme = AppTheme.getCustomTheme(primaryColor: Colors.teal);

// All these components will be properly themed:
// - ElevatedButton, OutlinedButton, TextButton, IconButton, FilledButton
// - TextField, Dropdown, Checkbox, Radio, Switch, Slider
// - AppBar, BottomNavigationBar, NavigationRail, TabBar
// - Card, Dialog, BottomSheet, Drawer, ListTile
// - SnackBar, Tooltip, PopupMenu, ExpansionTile
// - ProgressIndicator, Chip, Badge, Divider, Scrollbar
// - DatePicker, TimePicker, Menu, and more...
```

### Theme Previews

| Blue Theme                                           | Red Theme                                         | Green Theme                                           |
| ---------------------------------------------------- | ------------------------------------------------- | ----------------------------------------------------- |
| ![Blue Theme](screenshots/blue_theme_screenshot.png) | ![Red Theme](screenshots/red_theme_screenshot.png) | ![Green Theme](screenshots/green_theme_screenshot.png) |

## Example App

The included example app is the best way to see the package in action. It demonstrates:
- Switching between all predefined light and dark themes.
- Using a text field to generate and apply a custom theme from any hex color at runtime.
- Showcasing various UI components with the applied themes.

To run the example app:

```sh
cd example
flutter run
```

This will launch the app on your connected device or simulator.

## Migration Guide

### From 1.0.3 to 1.0.4+
- No breaking changes
- All existing code will continue to work
- New theme components are automatically applied
- Deprecated API usage has been fixed internally

## Additional Information

- **Flutter Compatibility**: Compatible with Flutter 2.19.0 and above
- **Material Design**: Follows Material 3 design guidelines
- **Accessibility**: Maintains proper contrast ratios and touch targets
- **Performance**: Lightweight with minimal overhead
- For more details on the API, check out the [API Documentation](doc/api/index.html).
- If you find any issues or have a feature request, please file them on the [GitHub repository](https://github.com/vignarajj/theme_gen).
