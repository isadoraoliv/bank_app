import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bank_app/app/modules/transfer/transfer_controller.dart';
import 'package:bank_app/app/modules/transfer/transfer_module.dart';

void main() {
  initModule(TransferModule());
  TransferController transfer;

  setUp(() {
    transfer = TransferModule.to.get<TransferController>();
  });

  group('TransferController Test', () {
    test("First Test", () {
      expect(transfer, isInstanceOf<TransferController>());
    });

    test("Set Value", () {
      expect(transfer.value, equals(0));
      transfer.increment();
      expect(transfer.value, equals(1));
    });
  });
}
