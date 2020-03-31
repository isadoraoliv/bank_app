import 'package:bank_app/app/modules/transfer/pages/confirm_transfer/confirm_transfer_module.dart';
import 'package:bank_app/app/modules/transfer/pages/send_transfer/send_transfer_controller.dart';
import 'package:bank_app/app/modules/transfer/pages/send_transfer/send_transfer_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SendTransferModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SendTransferController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SendTransferPage()),
        Router('/confirm_transfer', module: ConfirmTransferModule()),
      ];

  static Inject get to => Inject<SendTransferModule>.of();
}
