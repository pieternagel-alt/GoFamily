import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'kids_controller.g.dart';

/// v0.9: Placeholder-Controller, da Logik in Missions/Stickers liegt.
/// KidsController hält nur einfachen UI-State (z. B. ausgewähltes Tab etc.)

@riverpod
class KidsController extends _$KidsController {
  @override
  int build() {
    // default selected tab index
    return 0;
  }

  void selectTab(int index) {
    state = index;
  }
}
