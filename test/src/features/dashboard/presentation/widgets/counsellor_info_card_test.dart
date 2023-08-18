// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kcc/src/features/dashboard/presentation/widgets/counsellor_info_card.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

void main() {
  testWidgets('CounsellorInfoCard displays correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CounsellorInfoCard(
            image: 'assets/images/bernice.png',
            position: 'SENIOR COUNSELLOR',
            name: 'MRS. BERNICE S. OFOSUHENE PEASAH',
            address:
                'DEPT: KNUST COUNSELLING CENTER,\nKNUST COUNSELLING CENTER',
          ),
        ),
      ),
    );

    // Verify that the CounsellorInfoCard's widgets are displayed correctly.
    expect(find.text('MRS. BERNICE S. OFOSUHENE PEASAH'), findsOneWidget);
    expect(find.text('SENIOR COUNSELLOR'), findsOneWidget);
    expect(
      find.text('DEPT: KNUST COUNSELLING CENTER,\nKNUST COUNSELLING CENTER'),
      findsOneWidget,
    );
    // expect(find.byType(Image), findsOneWidget);
    expect(find.byType(CircularStructureWithWidgetsInside), findsOneWidget);
    expect(find.byType(Container), findsNWidgets(3));
    expect(find.byType(Padding), findsNWidgets(6));
    expect(find.byType(SizedBox), findsNWidgets(3));
    expect(find.byType(Column), findsOneWidget);
    expect(find.byType(Divider), findsOneWidget);
  });
}
