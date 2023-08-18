import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kcc/src/features/dashboard/presentation/views/events.dart';
import 'package:kcc/src/features/dashboard/presentation/widgets/title_text_card.dart';

void main() {
  testWidgets('EventScreen widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: EventScreen(),
      ),
    );

    // Verify that the title text is displayed.
    expect(find.text('EVENTS & ANNOUNCEMENTS'), findsOneWidget);

    // Verify that the two TitleTextCard widgets are displayed.
    expect(find.byType(TitleTextCard), findsOneWidget);

    // Verify that the background image is displayed.
    expect(find.byType(Image), findsOneWidget);
  });
}
