import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bank_app/app/modules/payment/payment_page.dart';

main() {
  testWidgets('PaymentPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(PaymentPage(title: 'Payment')));
    final titleFinder = find.text('Payment');
    expect(titleFinder, findsOneWidget);
  });
}
