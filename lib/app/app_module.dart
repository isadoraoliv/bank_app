import 'package:bank_app/app/app_controller.dart';
import 'package:bank_app/app/modules/login/login_module.dart';
import 'package:bank_app/app/modules/transfer/pages/send_transfer/send_transfer_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:bank_app/app/app_widget.dart';

import 'modules/transfer/pages/confirm_transfer/confirm_transfer_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
