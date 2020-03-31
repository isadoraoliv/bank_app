import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bank_app/app/modules/home/home_page.dart';

main() {
  testWidgets('HomePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage(
      modules: null,
    )));
    final titleFinder = find.text('Home');
    expect(titleFinder, findsOneWidget);
  });
}
