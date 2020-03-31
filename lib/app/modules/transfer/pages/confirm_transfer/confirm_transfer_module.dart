import 'package:flutter_modular/flutter_modular.dart';

import 'confirm_transfer_controller.dart';
import 'confirm_transfer_page.dart';

class ConfirmTransferModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ConfirmTransferController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ConfirmTransferPage()),
      ];

  static Inject get to => Inject<ConfirmTransferModule>.of();
}
