import 'package:bank_app/app/modules/transfer/pages/confirm_transfer/confirm_transfer_controller.dart';
import 'package:bank_app/app/modules/transfer/pages/confirm_transfer/confirm_transfer_module.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(ConfirmTransferModule());
  ConfirmTransferController confirmtransfer;

  setUp(() {
    confirmtransfer = ConfirmTransferModule.to.get<ConfirmTransferController>();
  });

  group('ConfirmTransferController Test', () {
    test("First Test", () {
      expect(confirmtransfer, isInstanceOf<ConfirmTransferController>());
    });

    test("Set Value", () {
      expect(confirmtransfer.value, equals(0));
      confirmtransfer.increment();
      expect(confirmtransfer.value, equals(1));
    });
  });
}
