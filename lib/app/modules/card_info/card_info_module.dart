import 'package:bank_app/app/modules/card_info/card_info_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bank_app/app/modules/card_info/card_info_page.dart';

class CardInfoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CardInfoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CardInfoPage()),
      ];

  static Inject get to => Inject<CardInfoModule>.of();
}
