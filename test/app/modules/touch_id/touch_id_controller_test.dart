import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bank_app/app/modules/touch_id/touch_id_controller.dart';
import 'package:bank_app/app/modules/touch_id/touch_id_module.dart';

void main() {
  initModule(TouchIdModule());
  TouchIdController touchid;

  setUp(() {
    touchid = TouchIdModule.to.get<TouchIdController>();
  });

  group('TouchIdController Test', () {
    test("First Test", () {
      expect(touchid, isInstanceOf<TouchIdController>());
    });

    test("Set Value", () {
      expect(touchid.value, equals(0));
      touchid.increment();
      expect(touchid.value, equals(1));
    });
  });
}
