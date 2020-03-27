import 'package:mobx/mobx.dart';

part 'transfer_controller.g.dart';

class TransferController = _TransferControllerBase with _$TransferController;

abstract class _TransferControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
