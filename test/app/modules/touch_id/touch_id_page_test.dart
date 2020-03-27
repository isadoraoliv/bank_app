import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bank_app/app/modules/touch_id/touch_id_page.dart';

main() {
  testWidgets('TouchIdPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(TouchIdPage(title: 'TouchId')));
    final titleFinder = find.text('TouchId');
    expect(titleFinder, findsOneWidget);
  });
}
