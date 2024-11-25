import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab15/main.dart';

void main() {
  group('Function calculation tests', () {
    test('Calculate y = x - 1/x^2 + 1/(3x)', () {
      final appState = CalculatorAppState();

      expect(appState.calculateFunction(1), closeTo(0.3333, 0.0001));
      expect(appState.calculateFunction(2), closeTo(1.9166, 0.0001));
      expect(() => appState.calculateFunction(0), throwsArgumentError);
    });
  });

  group('Widget tests', () {
    testWidgets('Checks for text with pattern <Group>: <Name>\'s last Flutter App', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text("KN-32 Roman's last Flutter App"), findsOneWidget);
    });

    testWidgets('Checks for FloatingActionButton with Icons.person', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      final fab = find.byType(FloatingActionButton);
      expect(fab, findsOneWidget);

      final icon = find.descendant(of: fab, matching: find.byIcon(Icons.person));
      expect(icon, findsOneWidget);
    });

    testWidgets('Checks for counter increment with step = 1', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.text("Counter: 0"), findsOneWidget);

      final fab = find.byType(FloatingActionButton);
      await tester.tap(fab);
      await tester.pump();

      expect(find.text("Counter: 1"), findsOneWidget);
    });
  });
}
