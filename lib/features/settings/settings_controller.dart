import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/app_state/app_settings.dart';
import '../../core/app_state/app_settings_controller.dart';

class SettingsController {
  SettingsController(this.ref);

  final WidgetRef ref;

  AppSettings get settings => ref.watch(appSettingsControllerProvider);

  void toggleDarkMode(bool value) {
    ref.read(appSettingsControllerProvider.notifier).toggleDarkMode(value);
  }

  void setTextScaleFactor(double factor) {
    ref.read(appSettingsControllerProvider.notifier).setTextScaleFactor(factor);
  }

  void setHomeModuleVisibility(HomeModule module, bool visible) {
    ref
        .read(appSettingsControllerProvider.notifier)
        .setHomeModuleVisibility(module, visible);
  }
}
