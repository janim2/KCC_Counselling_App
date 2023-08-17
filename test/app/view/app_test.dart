import 'package:flutter_test/flutter_test.dart';
import 'package:kcc/app/app.dart';
import 'package:kcc/src/features/initial/presentation/views/initial_screen.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(InitialScreen), findsOneWidget);
    });
  });
}
