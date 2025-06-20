import 'package:flutter_test/flutter_test.dart';
import 'package:theme_gen/src/themes/custom_theme_generator.dart';

void main() {
  test('Custom theme generator creates a valid theme string', () {
    final themeCode =
        CustomThemeGenerator.generateTheme('custom_pink', '#FF00FF');
    expect(themeCode, contains('ThemeData'));
    expect(themeCode, contains('custom_pink_lightTheme'));
    expect(themeCode, contains('custom_pink_darkTheme'));
  });
}
