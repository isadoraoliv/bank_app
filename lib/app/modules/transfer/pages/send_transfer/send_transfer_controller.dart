import 'package:mobx/mobx.dart';

part 'send_transfer_controller.g.dart';

class SendTransferController = _SendTransferControllerBase
    with _$SendTransferController;

abstract class _SendTransferControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
