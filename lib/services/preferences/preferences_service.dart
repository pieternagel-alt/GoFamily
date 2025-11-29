import 'package:gofamily/core/app_state/app_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Service für persistente Speicherung von App-Einstellungen
class PreferencesService {
  static const _keyDarkMode = 'darkMode';
  static const _keyTextScale = 'textScale';

  static const _keyShowWeather = 'showWeather';
  static const _keyShowSafety = 'showSafety';
  static const _keyShowActivities = 'showActivities';

  /// Lädt gespeicherte Einstellungen
  Future<AppSettings> loadAppSettings() async {
    final prefs = await SharedPreferences.getInstance();

    // DARK MODE
    final isDarkMode = prefs.getBool(_keyDarkMode) ?? false;

    // TEXT SIZE
    final textScale = prefs.getDouble(_keyTextScale) ?? 1.0;

    // MODULE VISIBILITY
    final showWeather = prefs.getBool(_keyShowWeather) ?? true;
    final showSafety = prefs.getBool(_keyShowSafety) ?? true;
    final showActivities = prefs.getBool(_keyShowActivities) ?? true;

    return AppSettings(
      isDarkMode: isDarkMode,
      textScaleFactor: textScale,
      homeModules: HomeModulesVisibility(
        showWeather: showWeather,
        showSafety: showSafety,
        showActivities: showActivities,
      ),
    );
  }

  /// Speichert Einstellungen dauerhaft
  Future<void> saveAppSettings(AppSettings settings) async {
    final prefs = await SharedPreferences.getInstance();

    // DARK MODE
    await prefs.setBool(_keyDarkMode, settings.isDarkMode);

    // TEXT SIZE
    await prefs.setDouble(_keyTextScale, settings.textScaleFactor);

    // MODULE VISIBILITY
    await prefs.setBool(_keyShowWeather, settings.homeModules.showWeather);
    await prefs.setBool(_keyShowSafety, settings.homeModules.showSafety);
    await prefs.setBool(
      _keyShowActivities,
      settings.homeModules.showActivities,
    );
  }
}
