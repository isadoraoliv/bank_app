import 'package:bank_app/app/modules/payment/payment_module.dart';
import 'package:bank_app/app/modules/transfer/transfer_module.dart';
import 'package:bank_app/app/modules/welcome/welcome_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bank_app/app/modules/welcome/welcome_page.dart';

class WelcomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => WelcomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => WelcomePage()),
        Router('/transfer', module: TransferModule()),
        Router('/payment', module: PaymentModule()),
      ];

  static Inject get to => Inject<WelcomeModule>.of();
}
