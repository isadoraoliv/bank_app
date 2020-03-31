import 'package:bank_app/app/modules/transfer/pages/confirm_transfer/confirm_transfer_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

main() {
  testWidgets('ConfirmTransferPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(ConfirmTransferPage(title: 'ConfirmTransfer')));
    final titleFinder = find.text('ConfirmTransfer');
    expect(titleFinder, findsOneWidget);
  });
}
