import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import '../lib/registration_form.dart';

void main() {
  testWidgets('Registration form displays UI components', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: RegistrationForm()));

    // Check AppBar title
    expect(find.text('Registration'), findsOneWidget);

    // Check TextField
    expect(find.byType(TextField), findsOneWidget);

    // Check Register button
    expect(find.text('Register'), findsOneWidget);
  });

  testWidgets('Register button shows error for empty name', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: RegistrationForm()));

    // Tap Register button
    await tester.tap(find.text('Register'));

    // Rebuild the widget
    await tester.pump();

    // Check error message
    expect(find.text('Please enter your name'), findsOneWidget);
  });

  testWidgets('Register button shows success message', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: RegistrationForm()));

    // Find the TextField
    final nameField = find.byType(TextField);

    // Enter name
    await tester.enterText(nameField, 'John');

    // Tap Register
    await tester.tap(find.text('Register'));

    // Rebuild the widget
    await tester.pump();

    // Check success message
    expect(find.text('Registration successful'), findsOneWidget);
  });
}
