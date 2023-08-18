import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kcc/src/features/dashboard/presentation/views/faq.dart';
import 'package:kcc/src/features/dashboard/presentation/widgets/faq_card.dart';

void main() {
  testWidgets('FAQScreen displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: FAQScreen(),
      ),
    );

    // Verify that the FAQScreen's widgets are displayed correctly.
    expect(find.text('FREQUENTLY ASKED QUESTIONS'), findsOneWidget);
    expect(find.byType(Image), findsNWidgets(4));
    expect(find.byType(FAQCard), findsNWidgets(3));
  });
}
