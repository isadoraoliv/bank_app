import 'package:mobx/mobx.dart';

part 'confirm_transfer_controller.g.dart';

class ConfirmTransferController = _ConfirmTransferControllerBase
    with _$ConfirmTransferController;

abstract class _ConfirmTransferControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
