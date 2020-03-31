import 'package:bank_app/app/modules/transfer/pages/send_transfer/send_transfer_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

main() {
  testWidgets('SendTransferPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(SendTransferPage(title: 'SendTransfer')));
    final titleFinder = find.text('SendTransfer');
    expect(titleFinder, findsOneWidget);
  });
}
