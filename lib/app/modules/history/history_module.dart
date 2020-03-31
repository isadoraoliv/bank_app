import 'package:bank_app/app/modules/history/history_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bank_app/app/modules/history/history_page.dart';

class HistoryModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HistoryController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HistoryPage()),
      ];

  static Inject get to => Inject<HistoryModule>.of();
}
