import 'package:bank_app/app/modules/payment/payment_controller.dart';
import 'package:bank_app/app/modules/welcome/welcome_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bank_app/app/modules/payment/payment_page.dart';

class PaymentModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PaymentController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PaymentPage()),
        Router('/welcome', module: WelcomeModule()),
      ];

  static Inject get to => Inject<PaymentModule>.of();
}
