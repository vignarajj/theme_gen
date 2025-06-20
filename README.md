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

A Flutter package to simplify theme management with predefined themes and a CLI for generating custom themes.

## Installation

Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  theme_gen: ^1.0.0
```

Then run `flutter pub get`.

## Usage

### Predefined Themes

Apply a predefined theme to your `MaterialApp`:

```dart
import 'package:flutter/material.dart';
import 'package:theme_gen/theme_gen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Gen Example',
      theme: AppTheme.lightTheme.blue,
      darkTheme: AppTheme.darkTheme.blue,
      home: MyHomePage(),
    );
  }
}
```

Available predefined themes:
- `blue`
- `red`
- `green`
- `purple`
- `blackandwhite`

### Custom Theme Generation (CLI)

Use the CLI to generate a custom theme from a hex color.

1.  **Run the command:**

    ```sh
    dart run theme_gen:theme create theme
    ```

2.  **Enter a theme name:** When prompted, enter a name for your theme (e.g., `custom_pink`). The name should be in `snake_case`.

3.  **Enter a hex color:** Provide a hex color code (e.g., `#FF00FF`).

The CLI will generate a `<theme_name>_theme.dart` file inside the `app_theme/` directory with your custom light and dark themes.

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
