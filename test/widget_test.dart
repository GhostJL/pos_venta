
import 'package:flutter_test/flutter_test.dart';
import 'package:pos_venta/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  testWidgets('App starts without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: MainApp()));
    expect(find.byType(MainApp), findsOneWidget);
  });
}
