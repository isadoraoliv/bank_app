import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bank_app/app/modules/history/history_controller.dart';
import 'package:bank_app/app/modules/history/history_module.dart';

void main() {
  initModule(HistoryModule());
  HistoryController history;

  setUp(() {
    history = HistoryModule.to.get<HistoryController>();
  });

  group('HistoryController Test', () {
    test("First Test", () {
      expect(history, isInstanceOf<HistoryController>());
    });

    test("Set Value", () {
      expect(history.value, equals(0));
      history.increment();
      expect(history.value, equals(1));
    });
  });
}
