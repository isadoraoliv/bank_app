import 'package:bank_app/app/modules/transfer/pages/send_transfer/send_transfer_controller.dart';
import 'package:bank_app/app/modules/transfer/pages/send_transfer/send_transfer_module.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(SendTransferModule());
  SendTransferController sendtransfer;

  setUp(() {
    sendtransfer = SendTransferModule.to.get<SendTransferController>();
  });

  group('SendTransferController Test', () {
    test("First Test", () {
      expect(sendtransfer, isInstanceOf<SendTransferController>());
    });

    test("Set Value", () {
      expect(sendtransfer.value, equals(0));
      sendtransfer.increment();
      expect(sendtransfer.value, equals(1));
    });
  });
}
