import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:user_todo/main_mock.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('test app', (tester) async {
    app.main();

    await tester.pumpAndSettle();

    final user1Row = find.text('User1');
    expect(user1Row, findsOneWidget);

    await tester.tap(user1Row);
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 5));
  });
}
