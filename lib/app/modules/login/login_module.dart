import 'package:bank_app/app/modules/home/home_module.dart';
import 'package:bank_app/app/modules/login/login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bank_app/app/modules/login/login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => LoginPage()),
        Router('/home', module: HomeModule()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
