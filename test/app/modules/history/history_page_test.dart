import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bank_app/app/modules/history/history_page.dart';

main() {
  testWidgets('HistoryPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HistoryPage(title: 'History')));
    final titleFinder = find.text('History');
    expect(titleFinder, findsOneWidget);
  });
}
