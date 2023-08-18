import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kcc/src/features/dashboard/presentation/widgets/title_text_card.dart';
import 'package:kcc/src/features/initial/presentation/widgets/circular_structure_with_widgets.dart';

void main() {
  testWidgets('TitleTextCard widget test', (WidgetTester tester) async {
    const title = 'Test Title';
    const text = 'Test Text';

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: TitleTextCard(title: title, text: text),
      ),
    );

    // Verify that the title and text are displayed.
    expect(find.text(title), findsOneWidget);
    expect(find.text(text), findsOneWidget);

    // Verify that the CircularStructureWithWidgetsInside widget is displayed.
    expect(find.byType(CircularStructureWithWidgetsInside), findsOneWidget);
  });
}
