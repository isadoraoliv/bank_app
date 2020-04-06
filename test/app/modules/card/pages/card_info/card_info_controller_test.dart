import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bank_app/app/modules/card/pages/card_info/card_info_controller.dart';
import 'package:bank_app/app/modules/card/pages/card_info/card_info_module.dart';

void main() {
  initModule(CardInfoModule());
  CardInfoController cardinfo;

  setUp(() {
    cardinfo = CardInfoModule.to.get<CardInfoController>();
  });

  group('CardInfoController Test', () {
    test("First Test", () {
      expect(cardinfo, isInstanceOf<CardInfoController>());
    });

    test("Set Value", () {
      expect(cardinfo.value, equals(0));
      cardinfo.increment();
      expect(cardinfo.value, equals(1));
    });
  });
}
