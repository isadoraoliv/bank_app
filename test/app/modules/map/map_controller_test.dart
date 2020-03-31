import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bank_app/app/modules/map/map_controller.dart';
import 'package:bank_app/app/modules/map/map_module.dart';

void main() {
  initModule(MapModule());
  MapController map;

  setUp(() {
    map = MapModule.to.get<MapController>();
  });

  group('MapController Test', () {
    test("First Test", () {
      expect(map, isInstanceOf<MapController>());
    });

    test("Set Value", () {
      expect(map.value, equals(0));
      map.increment();
      expect(map.value, equals(1));
    });
  });
}
