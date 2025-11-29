import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/app_state/app_settings.dart';
import '../../core/app_state/app_settings_controller.dart';

part 'settings_controller.g.dart';

@riverpod
class SettingsController extends _$SettingsController {
  @override
  void build() {
    // v0.8: keine eigene Initialisierungslogik nötig.
  }

  Future<void> toggleDarkMode() async {
    final appSettingsCtrl = ref.read(appSettingsControllerProvider.notifier);
    await appSettingsCtrl.toggleDarkMode();
  }

  Future<void> setTextScale(double factor) async {
    final appSettingsCtrl = ref.read(appSettingsControllerProvider.notifier);
    await appSettingsCtrl.setTextScaleFactor(factor);
  }

  Future<void> setHomeModuleVisibility(
    HomeModule module,
    bool isVisible,
  ) async {
    final appSettingsCtrl = ref.read(appSettingsControllerProvider.notifier);
    await appSettingsCtrl.setHomeModuleVisibility(module, isVisible);
  }
}
