import 'package:bank_app/app/modules/transfer/pages/confirm_transfer/confirm_transfer_module.dart';
import 'package:bank_app/app/modules/transfer/pages/send_transfer/send_transfer_module.dart';
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
        Router('/send_transfer', module: SendTransferModule()),
        Router('/confirm_transfer', module: ConfirmTransferModule()),
      ];

  static Inject get to => Inject<TransferModule>.of();
}
