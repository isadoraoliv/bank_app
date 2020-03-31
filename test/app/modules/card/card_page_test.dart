import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bank_app/app/modules/card/card_page.dart';

main() {
  testWidgets('CardPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CardPage(title: 'Card')));
    final titleFinder = find.text('Card');
    expect(titleFinder, findsOneWidget);
  });
}
