import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/app_state/app_settings.dart';

part 'preferences_service.g.dart';

class PreferencesService {
  PreferencesService(this.prefs);

  final SharedPreferences prefs;

  static const _keyDarkMode = 'app_dark_mode';
  static const _keyTextScale = 'app_text_scale';
  static const _keyHomeShowWeather = 'home_show_weather';
  static const _keyHomeShowSafety = 'home_show_safety';
  static const _keyHomeShowActivities = 'home_show_activities';

  AppSettings loadAppSettings() {
    final isDarkMode = prefs.getBool(_keyDarkMode) ?? false;
    final textScaleFactor = prefs.getDouble(_keyTextScale) ?? 1.0;

    final showWeather = prefs.getBool(_keyHomeShowWeather) ?? true;
    final showSafety = prefs.getBool(_keyHomeShowSafety) ?? true;
    final showActivities = prefs.getBool(_keyHomeShowActivities) ?? true;

    return AppSettings(
      isDarkMode: isDarkMode,
      textScaleFactor: textScaleFactor,
      homeModules: HomeModulesVisibility(
        showWeather: showWeather,
        showSafety: showSafety,
        showActivities: showActivities,
      ),
    );
  }

  Future<void> saveAppSettings(AppSettings settings) async {
    await prefs.setBool(_keyDarkMode, settings.isDarkMode);
    await prefs.setDouble(_keyTextScale, settings.textScaleFactor);

    await prefs.setBool(_keyHomeShowWeather, settings.homeModules.showWeather);
    await prefs.setBool(_keyHomeShowSafety, settings.homeModules.showSafety);
    await prefs.setBool(
      _keyHomeShowActivities,
      settings.homeModules.showActivities,
    );
  }
}

@riverpod
Future<PreferencesService> preferencesService(Ref ref) async {
  final prefs = await SharedPreferences.getInstance();
  return PreferencesService(prefs);
}
