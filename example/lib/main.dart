import 'package:flutter/material.dart';
import 'package:theme_gen/theme_gen.dart';
import 'app_theme/custom_pink_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _currentTheme = AppTheme.lightTheme.blue;
  ThemeData _currentDarkTheme = AppTheme.darkTheme.blue;
  String _selectedTheme = 'blue';

  void _changeTheme(String themeName) {
    setState(() {
      _selectedTheme = themeName;
      switch (themeName) {
        case 'blue':
          _currentTheme = AppTheme.lightTheme.blue;
          _currentDarkTheme = AppTheme.darkTheme.blue;
          break;
        case 'red':
          _currentTheme = AppTheme.lightTheme.red;
          _currentDarkTheme = AppTheme.darkTheme.red;
          break;
        case 'green':
          _currentTheme = AppTheme.lightTheme.green;
          _currentDarkTheme = AppTheme.darkTheme.green;
          break;
        case 'purple':
          _currentTheme = AppTheme.lightTheme.purple;
          _currentDarkTheme = AppTheme.darkTheme.purple;
          break;
        case 'blackandwhite':
          _currentTheme = AppTheme.lightTheme.blackandwhite;
          _currentDarkTheme = AppTheme.darkTheme.blackandwhite;
          break;
        case 'custom_pink':
          _currentTheme = custom_pink_lightTheme;
          _currentDarkTheme = custom_pink_darkTheme;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Gen Example',
      theme: _currentTheme,
      darkTheme: _currentDarkTheme,
      themeMode: ThemeMode.system,
      home: MyHomePage(
        title: 'Theme Gen Example',
        onThemeChanged: _changeTheme,
        selectedTheme: _selectedTheme,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage(
      {super.key,
      required this.title,
      required this.onThemeChanged,
      required this.selectedTheme});

  final String title;
  final ValueChanged<String> onThemeChanged;
  final String selectedTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          DropdownButton<String>(
            value: selectedTheme,
            onChanged: (String? newValue) {
              if (newValue != null) {
                onThemeChanged(newValue);
              }
            },
            items: <String>[
              'blue',
              'red',
              'green',
              'purple',
              'blackandwhite',
              'custom_pink'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'This is a sample text.',
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Sample TextField',
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('This is a SnackBar.'),
                        ),
                      );
                    },
                    child: const Text('Elevated Button'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Text Button'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Outlined Button'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text('This is a Card.'),
                      SizedBox(height: 8),
                      Icon(Icons.widgets),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Sample Dialog'),
                        content:
                            const Text('This is the content of the dialog.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Close'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text('Show Dialog'),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        height: 200,
                        padding: const EdgeInsets.all(16.0),
                        child: const Center(
                          child: Text('This is a BottomSheet.'),
                        ),
                      ),
                    );
                  },
                  child: const Text('Show BottomSheet'),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
} 