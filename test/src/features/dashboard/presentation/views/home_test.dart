import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kcc/src/features/dashboard/presentation/views/home.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

void main() {
  testWidgets('HomeScreen displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomeScreen(),
      ),
    );

    // Verify that the HomeScreen's widgets are displayed correctly.
    expect(find.text('WELCOME !'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(CircularStructureWithWidgetsInside), findsOneWidget);
    expect(find.textContaining('This app has been designed'), findsOneWidget);
    expect(find.textContaining('Happy Living!'), findsOneWidget);
  });
}
