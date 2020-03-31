import 'package:bank_app/app/modules/home/home_module.dart';
import 'package:bank_app/app/modules/login/login_module.dart';
import 'package:bank_app/app/modules/touch_id/touch_id_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bank_app/app/modules/touch_id/touch_id_page.dart';

class TouchIdModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TouchIdController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => TouchIdPage()),
        Router('/login', module: LoginModule()),
        Router('/home', module: HomeModule()),
      ];

  static Inject get to => Inject<TouchIdModule>.of();
}
