import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bank_app/app/modules/transfer/transfer_page.dart';

main() {
  testWidgets('TransferPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(TransferPage(title: 'Transfer')));
    final titleFinder = find.text('Transfer');
    expect(titleFinder, findsOneWidget);
  });
}
