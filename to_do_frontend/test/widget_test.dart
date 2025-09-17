import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:to_do_frontend/main.dart';

void main() {
  testWidgets('Empty state and title render', (WidgetTester tester) async {
    await tester.pumpWidget(const ToDoApp());
    // allow provider init
    await tester.pump(const Duration(milliseconds: 300));

    expect(find.text('Your Tasks'), findsOneWidget);
    expect(find.text('No tasks yet'), findsOneWidget);
    expect(find.byIcon(Icons.add_rounded), findsOneWidget);
  });

  testWidgets('Add task flow', (WidgetTester tester) async {
    await tester.pumpWidget(const ToDoApp());
    await tester.pump(const Duration(milliseconds: 300));

    // Open dialog
    await tester.tap(find.byIcon(Icons.add_rounded));
    await tester.pumpAndSettle();

    // Enter title and submit
    await tester.enterText(find.byType(TextField).first, 'Test Task');
    await tester.tap(find.widgetWithText(ElevatedButton, 'Add'));
    await tester.pumpAndSettle();

    // Verify new task appears
    expect(find.text('Test Task'), findsOneWidget);
  });
}
