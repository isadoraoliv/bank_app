import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bank_app/app/modules/card/card_controller.dart';
import 'package:bank_app/app/modules/card/card_module.dart';

void main() {
  initModule(CardModule());
  CardController card;

  setUp(() {
    card = CardModule.to.get<CardController>();
  });

  group('CardController Test', () {
    test("First Test", () {
      expect(card, isInstanceOf<CardController>());
    });

    test("Set Value", () {
      expect(card.value, equals(0));
      card.increment();
      expect(card.value, equals(1));
    });
  });
}
