import 'package:flutter_test/flutter_test.dart';

import 'package:coffee/main.dart';

void main() {
  testWidgets('Home screen loads with banner and products', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Get 20% Discount \nOn your First Order!'), findsOneWidget);
    expect(find.text('Add to Cart'), findsWidgets);
    expect(tester.takeException(), isNull);
  });
}
