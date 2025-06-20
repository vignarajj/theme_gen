import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:theme_gen/theme_gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _currentTheme = AppTheme.light.blue;
  final TextEditingController _hexColorController = TextEditingController();
  String _selectedKey = 'blue';
  ThemeData? _customTheme;

  static const themeKeys = [
    'blackAndWhite',
    'blue',
    'red',
    'green',
    'purple',
    'custom',
  ];

  static const themeLabels = {
    'blackAndWhite': 'Black & White',
    'blue': 'Blue',
    'red': 'Red',
    'green': 'Green',
    'purple': 'Purple',
    'custom': 'Custom',
  };

  ThemeData _getThemeByKey(String key, bool isDark) {
    switch (key) {
      case 'blackAndWhite':
        return isDark ? AppTheme.dark.blackAndWhite : AppTheme.light.blackAndWhite;
      case 'blue':
        return isDark ? AppTheme.dark.blue : AppTheme.light.blue;
      case 'red':
        return isDark ? AppTheme.dark.red : AppTheme.light.red;
      case 'green':
        return isDark ? AppTheme.dark.green : AppTheme.light.green;
      case 'purple':
        return isDark ? AppTheme.dark.purple : AppTheme.light.purple;
      case 'custom':
        return _customTheme ?? (isDark ? AppTheme.dark.blue : AppTheme.light.blue);
      default:
        return isDark ? AppTheme.dark.blue : AppTheme.light.blue;
    }
  }

  void _setTheme(String key) {
    final isDark = _currentTheme.brightness == Brightness.dark;
    setState(() {
      _selectedKey = key;
      _currentTheme = _getThemeByKey(key, isDark);
      if (key != 'custom') {
        _hexColorController.clear();
        _customTheme = null;
      }
    });
  }

  void _generateCustomTheme() {
    try {
      final color = HexColor(_hexColorController.text);
      final isDarkMode = _currentTheme.brightness == Brightness.dark;
      setState(() {
        _customTheme = isDarkMode
            ? AppTheme.getCustomDarkTheme(primaryColor: color)
            : AppTheme.getCustomTheme(primaryColor: color);
        _currentTheme = _customTheme!;
        _selectedKey = 'custom';
      });
    } catch (e) {
      // Show error if hex color is invalid
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid Hex Color. Please use format #RRGGBB'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = _currentTheme.brightness == Brightness.dark;
    return MaterialApp(
      title: 'Theme Gen',
      theme: _currentTheme,
      home: MyHomePage(
        onThemeChanged: _setTheme,
        onGenerateCustomTheme: _generateCustomTheme,
        hexColorController: _hexColorController,
        selectedKey: _selectedKey,
        isDarkMode: isDarkMode,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
    required this.onThemeChanged,
    required this.onGenerateCustomTheme,
    required this.hexColorController,
    required this.selectedKey,
    required this.isDarkMode,
  });

  final ValueChanged<String> onThemeChanged;
  final VoidCallback onGenerateCustomTheme;
  final TextEditingController hexColorController;
  final String selectedKey;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Gen'),
        actions: [
          IconButton(
            icon: Icon(Theme.of(context).brightness == Brightness.dark ? Icons.dark_mode : Icons.light_mode),
            onPressed: () {
              if (Theme.of(context).brightness == Brightness.dark) {
                onThemeChanged('blue');
              } else {
                onThemeChanged('blue');
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DropdownButton<String>(
              isExpanded: true,
              value: selectedKey,
              onChanged: (String? newKey) {
                if (newKey != null) {
                  onThemeChanged(newKey);
                }
              },
              items: _MyAppState.themeKeys.map((key) {
                return DropdownMenuItem<String>(
                  value: key,
                  child: Text(_MyAppState.themeLabels[key]!),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: hexColorController,
              decoration: const InputDecoration(
                labelText: 'Enter Hex Color (e.g. #FF00FF)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: onGenerateCustomTheme,
              child: const Text('Generate Custom Theme'),
            ),
            const SizedBox(height: 20),
            const Text(
              'This is a headline',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'This is body text. It will inherit the color from the theme.',
            ),
            const SizedBox(height: 20),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('This is a card'),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Outlined'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Text'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Dialog'),
              content: const Text('This is a dialog box.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Close'),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 