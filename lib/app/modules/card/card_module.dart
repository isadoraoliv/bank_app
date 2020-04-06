import 'package:bank_app/app/modules/card/card_controller.dart';
import 'package:bank_app/app/modules/card/pages/card_info/card_info_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bank_app/app/modules/card/card_page.dart';

class CardModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CardController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CardPage()),
        Router('/card_info', module: CardInfoModule()),
      ];

  static Inject get to => Inject<CardModule>.of();
}
