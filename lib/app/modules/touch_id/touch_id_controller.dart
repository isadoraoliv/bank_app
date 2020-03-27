import 'package:mobx/mobx.dart';

part 'touch_id_controller.g.dart';

class TouchIdController = _TouchIdControllerBase with _$TouchIdController;

abstract class _TouchIdControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
