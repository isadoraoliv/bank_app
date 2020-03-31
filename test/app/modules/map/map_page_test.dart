import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bank_app/app/modules/map/map_page.dart';

main() {
  testWidgets('MapPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(MapPage()));
    final titleFinder = find.text('Map');
    expect(titleFinder, findsOneWidget);
  });
}
