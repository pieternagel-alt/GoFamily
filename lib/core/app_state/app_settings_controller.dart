import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gofamily/core/app_state/app_settings.dart';
import 'package:gofamily/services/preferences/preferences_service.dart';

/// Provider, der den Controller bereitstellt
final appSettingsControllerProvider =
    StateNotifierProvider<AppSettingsController, AppSettings>(
      (ref) => AppSettingsController(PreferencesService()),
    );

/// Steuert das Laden/Speichern der AppSettings
/// und bietet Methoden für Settings-Screen etc.
class AppSettingsController extends StateNotifier<AppSettings> {
  AppSettingsController(this._preferences) : super(AppSettings.initial()) {
    _load();
  }

  final PreferencesService _preferences;

  Future<void> _load() async {
    final loaded = await _preferences.loadAppSettings();
    state = loaded;
  }

  /// Dark Mode an/aus
  Future<void> toggleDarkMode() async {
    final updated = state.copyWith(isDarkMode: !state.isDarkMode);
    state = updated;
    await _preferences.saveAppSettings(updated);
  }

  /// Textgröße setzen
  Future<void> setTextScaleFactor(double factor) async {
    final updated = state.copyWith(textScaleFactor: factor);
    state = updated;
    await _preferences.saveAppSettings(updated);
  }

  /// Sichtbarkeit eines Home-Moduls setzen
  Future<void> setHomeModuleVisibility(String moduleKey, bool visible) async {
    final updatedModules = Map<String, bool>.from(state.homeModules)
      ..[moduleKey] = visible;

    final updated = state.copyWith(homeModules: updatedModules);
    state = updated;
    await _preferences.saveAppSettings(updated);
  }
}
