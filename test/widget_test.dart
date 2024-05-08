import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aplikasi_tutor_pribadi/menu.dart';

void main() {
  testWidgets('MenuPage displays list of subjects',
      (WidgetTester tester) async {
    // Build MenuPage widget
    await tester.pumpWidget(MaterialApp(
      home: MenuPage(),
    ));

    // Verify that MenuPage displays list of subjects
    expect(find.text('Pemrograman Mobile'), findsOneWidget);
    expect(find.text('Metodologi Penelitian'), findsOneWidget);
    // Add more expectations for other subjects as needed
  });
}
