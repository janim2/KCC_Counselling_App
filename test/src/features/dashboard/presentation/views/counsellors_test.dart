// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kcc/src/features/dashboard/presentation/views/counsellors.dart';
import 'package:kcc/src/features/dashboard/presentation/widgets/counsellor_info_card.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

void main() {
  testWidgets('CounsellorsScreen displays correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: CounsellorsScreen(),
      ),
    );

    // Verify that the CounsellorsScreen's widgets are displayed correctly.
    expect(find.text('COUNSELLOR PROFILES'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(CircularStructureWithWidgetsInside), findsNWidgets(3));
    expect(find.byType(CounsellorInfoCard), findsNWidgets(3));
  });
}
