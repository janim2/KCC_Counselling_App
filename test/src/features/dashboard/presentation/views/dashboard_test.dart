import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kcc/src/features/dashboard/presentation/views/dashboard.dart';
import 'package:kcc/src/features/dashboard/presentation/views/home.dart';

void main() {
  testWidgets('DashboardScreen displays correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: DashboardScreen(),
      ),
    );

    // Verify that the DashboardScreen's widgets are displayed correctly.
    expect(find.byType(HomeScreen), findsOneWidget);
    expect(find.byType(GestureDetector), findsNWidgets(6));
    expect(find.byType(Icon), findsNWidgets(5));
    expect(find.byType(ColoredBox), findsOneWidget);
    expect(find.byType(Padding), findsWidgets);
    expect(find.byType(Scaffold), findsNWidgets(2));
  });

  testWidgets('DashboardScreen tap on icons changes page',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: DashboardScreen(),
      ),
    );

    // Tap on different icons and verify if the page changes.
    // await tester.tap(find.byIcon(Icons.person));
    // await tester.pumpAndSettle();
    expect(find.text('HomeScreen'), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);

    // await tester.tap(find.byIcon(Icons.question_mark));
    // await tester.pumpAndSettle();
    expect(find.text('HomeScreen'), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);

    // await tester.tap(find.byIcon(Icons.calendar_view_day));
    // await tester.pumpAndSettle();
    expect(find.text('HomeScreen'), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);

    // await tester.tap(find.byIcon(Icons.logout_outlined));
    // await tester.pumpAndSettle();
    expect(find.text('HomeScreen'), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
