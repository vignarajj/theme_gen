import 'dart:io';
import 'package:args/command_runner.dart';
import 'package:theme_gen/src/themes/custom_theme_generator.dart';

void main(List<String> arguments) {
  final runner = CommandRunner('theme_maker', 'A CLI for generating themes.')
    ..addCommand(CreateCommand());

  runner.run(arguments).catchError((error) {
    if (error is! UsageException) throw error;
    print(error);
    exit(64);
  });
}

class CreateCommand extends Command {
  @override
  final name = 'create';
  @override
  final description = 'Create a new theme.';

  CreateCommand() {
    addSubcommand(ThemeCommand());
  }
}

class ThemeCommand extends Command {
  @override
  final name = 'theme';
  @override
  final description = 'Create a new custom theme file.';

  @override
  void run() {
    print('Enter theme name (e.g., custom_pink):');
    final themeName = stdin.readLineSync();
    if (themeName == null || themeName.isEmpty) {
      print('Theme name cannot be empty.');
      exit(1);
    }

    print('Enter hex color (e.g., #FF00FF):');
    final hexColor = stdin.readLineSync();
    if (hexColor == null ||
        !RegExp(r'^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$').hasMatch(hexColor)) {
      print('Invalid hex color format.');
      exit(1);
    }

    final generatedTheme = CustomThemeGenerator.generateTheme(themeName, hexColor);
    final fileName = '${themeName.replaceAll(' ', '_').toLowerCase()}_theme.dart';
    final dir = Directory('app_theme');
    if (!dir.existsSync()) {
      dir.createSync();
    }
    final file = File('${dir.path}/$fileName');
    file.writeAsStringSync(generatedTheme);

    print('Theme "$themeName" created at ${file.path}');
  }
} 