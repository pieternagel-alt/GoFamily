import 'package:gofamily/core/app_state/app_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Kapselt Zugriff auf SharedPreferences
/// zum Laden/Speichern der AppSettings.
class PreferencesService {
  static const _keyDarkMode = 'darkMode';
  static const _keyTextScale = 'textScale';
  static const _keyHomeModules = 'homeModules';

  Future<AppSettings> loadAppSettings() async {
    final prefs = await SharedPreferences.getInstance();

    final isDarkMode = prefs.getBool(_keyDarkMode) ?? false;
    final textScale = prefs.getDouble(_keyTextScale) ?? 1.0;
    final modulesString = prefs.getStringList(_keyHomeModules);

    Map<String, bool> homeModules;
    if (modulesString == null) {
      // Standard: alles sichtbar
      homeModules = AppSettings.initial().homeModules;
    } else {
      // Format: "key:true" / "key:false"
      homeModules = {
        for (final entry in modulesString)
          if (entry.contains(':'))
            entry.split(':')[0]: entry.split(':')[1] == 'true',
      };
    }

    return AppSettings(
      isDarkMode: isDarkMode,
      textScaleFactor: textScale,
      homeModules: homeModules,
    );
  }

  Future<void> saveAppSettings(AppSettings settings) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(_keyDarkMode, settings.isDarkMode);
    await prefs.setDouble(_keyTextScale, settings.textScaleFactor);

    final modulesString = settings.homeModules.entries
        .map((e) => '${e.key}:${e.value}')
        .toList();

    await prefs.setStringList(_keyHomeModules, modulesString);
  }
}
