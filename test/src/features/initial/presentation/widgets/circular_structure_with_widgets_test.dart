import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

void main() {
  testWidgets('CircularStructureWithWidgetsInside displays correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: CircularStructureWithWidgetsInside()),
    );

    // Verify that the CircularStructureWithWidgetsInside widget is displayed
    // correctly.
    final circularContainerFinder = find.byType(Container);
    expect(circularContainerFinder, findsOneWidget);

    final gestureDetectorFinder = find.byType(GestureDetector);
    expect(gestureDetectorFinder, findsOneWidget);

    final paddingFinder = find.byType(Padding);
    expect(paddingFinder, findsNWidgets(2));

    // final containerInsideFinder = find.descendant(of: circularContainerFinder
    //, matching: find.byType(Container));
    // expect(containerInsideFinder, findsOneWidget);
  });
}
