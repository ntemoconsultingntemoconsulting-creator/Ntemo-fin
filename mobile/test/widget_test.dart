import 'package:flutter_test/flutter_test.dart';
import 'package:ntemo_mobile/main.dart';

void main() {
  testWidgets('App renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp(firebaseInitialized: false));

    expect(find.text('Application Flutter & Firebase'), findsOneWidget);
    expect(find.text('Ntemo Mobile - Flutter'), findsOneWidget);
  });
}
