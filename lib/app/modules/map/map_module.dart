import 'package:bank_app/app/modules/map/map_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bank_app/app/modules/map/map_page.dart';

class MapModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MapController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => MapPage()),
      ];

  static Inject get to => Inject<MapModule>.of();
}
