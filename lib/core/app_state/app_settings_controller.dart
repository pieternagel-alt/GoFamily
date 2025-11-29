import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../services/preferences/preferences_service.dart';
import 'app_settings.dart';

part 'app_settings_controller.g.dart';

@riverpod
class AppSettingsController extends _$AppSettingsController {
  @override
  FutureOr<AppSettings> build() async {
    final prefsService = await ref.watch(preferencesServiceProvider.future);
    return prefsService.loadAppSettings();
  }

  Future<void> toggleDarkMode() async {
    final current = state.asData?.value ?? const AppSettings();
    final updated = current.copyWith(isDarkMode: !current.isDarkMode);
    await _persist(updated);
  }

  Future<void> setTextScaleFactor(double value) async {
    final current = state.asData?.value ?? const AppSettings();
    final updated = current.copyWith(textScaleFactor: value);
    await _persist(updated);
  }

  Future<void> setHomeModuleVisibility(HomeModule module, bool visible) async {
    final current = state.asData?.value ?? const AppSettings();
    final h = current.homeModules;

    final updatedModules = switch (module) {
      HomeModule.weather => h.copyWith(showWeather: visible),
      HomeModule.safety => h.copyWith(showSafety: visible),
      HomeModule.activities => h.copyWith(showActivities: visible),
    };

    final updated = current.copyWith(homeModules: updatedModules);

    await _persist(updated);
  }

  Future<void> _persist(AppSettings updated) async {
    state = AsyncValue.data(updated);
    final prefsService = await ref.read(preferencesServiceProvider.future);
    await prefsService.saveAppSettings(updated);
  }
}
