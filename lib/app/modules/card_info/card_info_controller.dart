import 'package:mobx/mobx.dart';

part 'card_info_controller.g.dart';

class CardInfoController = _CardInfoControllerBase with _$CardInfoController;

abstract class _CardInfoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
