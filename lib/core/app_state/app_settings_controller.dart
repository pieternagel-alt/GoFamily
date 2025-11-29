import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gofamily/core/app_state/app_settings.dart';
import 'package:gofamily/services/preferences/preferences_service.dart';

// Provider für PreferencesService
final preferencesServiceProvider = Provider((ref) => PreferencesService());

// AppSettingsController verwaltet den Zustand
class AppSettingsController extends StateNotifier<AppSettings> {
  final PreferencesService _prefs;

  AppSettingsController(this._prefs) : super(AppSettings.initial()) {
    _load();
  }

  /// Einstellungen aus SharedPreferences laden
  Future<void> _load() async {
    final loaded = await _prefs.loadAppSettings();
    state = loaded;
  }

  /// Dark Mode toggeln
  Future<void> toggleDarkMode(bool value) async {
    state = state.copyWith(isDarkMode: value);
    await _prefs.saveAppSettings(state);
  }

  /// Textgröße setzen
  Future<void> setTextScaleFactor(double value) async {
    state = state.copyWith(textScaleFactor: value);
    await _prefs.saveAppSettings(state);
  }

  /// Module auf dem Homescreen sichtbar/unsichtbar machen
  Future<void> setHomeModuleVisibility(HomeModule module, bool visible) async {
    final current = state.homeModules;

    final updatedVisibility = current.copyWith(
      showWeather: module == HomeModule.weather ? visible : current.showWeather,
      showSafety: module == HomeModule.safety ? visible : current.showSafety,
      showActivities: module == HomeModule.activities
          ? visible
          : current.showActivities,
    );

    state = state.copyWith(homeModules: updatedVisibility);
    await _prefs.saveAppSettings(state);
  }
}

/// Provider für AppSettingsController
final appSettingsControllerProvider =
    StateNotifierProvider<AppSettingsController, AppSettings>((ref) {
      final prefs = ref.watch(preferencesServiceProvider);
      return AppSettingsController(prefs);
    });
