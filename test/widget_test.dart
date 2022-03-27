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
}
