import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kcc/src/features/initial/presentation/views/initial_screen.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

void main() {
  testWidgets('InitialScreen displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: InitialScreen()));

    // Verify that the initial screen's widgets are displayed correctly.
    expect(find.text('KCC'), findsOneWidget);
    expect(find.text('COUNSELLING APPLICATION'), findsOneWidget);
    expect(find.text('Get Started'), findsOneWidget);
    expect(
      find.byType(Image),
      findsNWidgets(2),
    ); // Two images in the widget tree
    expect(find.byType(CircularStructureWithWidgetsInside), findsOneWidget);
  });
}
