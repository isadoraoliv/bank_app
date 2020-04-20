import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bank_app/app/modules/card/pages/card_info/card_info_page.dart';

main() {
  testWidgets('CardInfoPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CardInfoPage()));
    final titleFinder = find.text('CardInfo');
    expect(titleFinder, findsOneWidget);
  });
}
