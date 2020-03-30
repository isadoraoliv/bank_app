import 'package:bank_app/app/modules/card/card_module.dart';
import 'package:bank_app/app/modules/history/history_module.dart';
import 'package:bank_app/app/modules/home/home_controller.dart';
import 'package:bank_app/app/modules/map/map_module.dart';
import 'package:bank_app/app/modules/profile/profile_module.dart';
import 'package:bank_app/app/modules/welcome/welcome_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bank_app/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(
          '/',
          child: (_, args) => HomePage(
            modules: [
              WelcomeModule(),
              HistoryModule(),
              MapModule(),
              CardModule(),
              ProfileModule(),
            ],
          ),
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
