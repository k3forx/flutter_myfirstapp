// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_myfirstapp/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Start screen is shown', (WidgetTester tester) async {
    await tester.binding.setSurfaceSize(const Size(400, 800));
    await tester.pumpWidget(const MyFirstApp());

    expect(find.text('Slide Puzzle'), findsOneWidget);
    expect(find.text('Start'), findsOneWidget);
  });

  testWidgets('puzzle screen is shown after start button is tapped',
      (WidgetTester tester) async {
    await tester.binding.setSurfaceSize(const Size(400, 800));
    await tester.pumpWidget(const MyFirstApp());

    await tester.tap(find.text('Start'));
    await tester.pumpAndSettle();

    final List<int> expectedNumbers = [1, 2, 3, 4, 5, 6, 7, 8];
    for (int i = 0; i < expectedNumbers.length; i++) {
      expect(find.text(expectedNumbers[i].toString()), findsOneWidget);
    }

    expect(find.text('shuffle'), findsOneWidget);
  });
}
