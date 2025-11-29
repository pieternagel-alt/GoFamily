/// Zentrale App-Einstellungen:
///  - Dark Mode
///  - Textskalierung
///  - Sichtbarkeit von Home-Modulen
class AppSettings {
  final bool isDarkMode;
  final double textScaleFactor;

  /// Map von Modul-Key -> sichtbar?
  /// Beispiel-Keys:
  ///  - 'weather'
  ///  - 'missions'
  ///  - 'stickers'
  final Map<String, bool> homeModules;

  AppSettings({
    required this.isDarkMode,
    required this.textScaleFactor,
    required this.homeModules,
  });

  /// Standard-Einstellungen beim ersten Start
  factory AppSettings.initial() => AppSettings(
    isDarkMode: false,
    textScaleFactor: 1.0,
    homeModules: {'weather': true, 'missions': true, 'stickers': true},
  );

  AppSettings copyWith({
    bool? isDarkMode,
    double? textScaleFactor,
    Map<String, bool>? homeModules,
  }) {
    return AppSettings(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      homeModules: homeModules ?? this.homeModules,
    );
  }
}
