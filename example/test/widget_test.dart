// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';

void main() {
  testWidgets('Theme Gen app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app loads with the expected title
    expect(find.text('Theme Gen'), findsOneWidget);
    
    // Verify that the dropdown is present
    expect(find.byType(DropdownButton<String>), findsOneWidget);
    
    // Verify that essential UI elements are present
    expect(find.text('This is a headline'), findsOneWidget);
    expect(find.text('This is body text. It will inherit the color from the theme.'), findsOneWidget);
    expect(find.text('Generate Custom Theme'), findsOneWidget);
    
    // Verify that buttons are present
    expect(find.text('Elevated'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsAtLeastNWidgets(2)); // Generate Custom Theme + Elevated buttons
    
    // Verify that cards are present
    expect(find.byType(Card), findsOneWidget);
    expect(find.text('This is a card'), findsOneWidget);
  });
  
  testWidgets('Theme dropdown interaction test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Find and tap the dropdown
    await tester.tap(find.byType(DropdownButton<String>));
    await tester.pump();

    // Verify dropdown options are available
    expect(find.text('Blue'), findsWidgets);
    expect(find.text('Red'), findsOneWidget);
    expect(find.text('Green'), findsOneWidget);
    expect(find.text('Purple'), findsOneWidget);
    
    // Close dropdown by tapping elsewhere
    await tester.tapAt(const Offset(100, 100));
    await tester.pump();
  });

  testWidgets('Custom theme generation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Find the text field and enter a hex color
    final textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    
    await tester.enterText(textField, '#FF5722');
    await tester.pump();
    
    // Find and tap the generate button
    final generateButton = find.text('Generate Custom Theme');
    await tester.tap(generateButton);
    await tester.pump();
    
    // The app should still be functional after custom theme generation
    expect(find.text('Theme Gen'), findsOneWidget);
  });
}
