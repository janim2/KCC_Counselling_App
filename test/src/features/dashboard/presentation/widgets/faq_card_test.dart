import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kcc/src/features/dashboard/presentation/widgets/faq_card.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

void main() {
  testWidgets('FAQCard displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FAQCard(
            image: 'assets/images/broken_heart.png',
            name: 'Frequently Asked Questions',
            address: 'Got questions? We have answers!',
          ),
        ),
      ),
    );

    // Verify that the FAQCard's widgets are displayed correctly.
    expect(find.text('Frequently Asked Questions'), findsOneWidget);
    expect(find.text('Got questions? We have answers!'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(CircularStructureWithWidgetsInside), findsOneWidget);
    expect(find.byType(Container), findsNWidgets(2));
    expect(find.byType(Padding), findsNWidgets(5));
    expect(find.byType(SizedBox), findsNWidgets(3));
    expect(find.byType(Column), findsOneWidget);
    expect(find.byType(Divider), findsOneWidget);
  });
}
