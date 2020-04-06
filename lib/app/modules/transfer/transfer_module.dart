import 'package:bank_app/app/modules/transfer/transfer_controller.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:bank_app/app/modules/transfer/transfer_page.dart';

class TransferModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TransferController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => TransferPage()),
      ];

  static Inject get to => Inject<TransferModule>.of();
}
