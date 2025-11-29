import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_controller.g.dart';

@riverpod
class MapController extends _$MapController {
  @override
  void build() {
    // v0.8: noch keine Karten-/Map-Logik.
  }

  // Zukünftige Methoden:
  // Future<void> centerOnFamily() async {}
  // Future<void> startNavigationTo(...) async {}
}
