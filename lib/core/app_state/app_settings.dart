import 'package:flutter/foundation.dart';

/// Welche Module können auf dem Home-Screen ein-/ausgeblendet werden?
enum HomeModule { weather, safety, activities }

/// Sichtbarkeit der einzelnen Home-Module
@immutable
class HomeModulesVisibility {
  final bool showWeather;
  final bool showSafety;
  final bool showActivities;

  const HomeModulesVisibility({
    this.showWeather = true,
    this.showSafety = true,
    this.showActivities = true,
  });

  HomeModulesVisibility copyWith({
    bool? showWeather,
    bool? showSafety,
    bool? showActivities,
  }) {
    return HomeModulesVisibility(
      showWeather: showWeather ?? this.showWeather,
      showSafety: showSafety ?? this.showSafety,
      showActivities: showActivities ?? this.showActivities,
    );
  }
}

/// Zentrale App-Einstellungen
@immutable
class AppSettings {
  final bool isDarkMode;
  final double textScaleFactor;
  final HomeModulesVisibility homeModules;

  const AppSettings({
    required this.isDarkMode,
    required this.textScaleFactor,
    required this.homeModules,
  });

  /// Anfangszustand der App
  factory AppSettings.initial() {
    return const AppSettings(
      isDarkMode: false,
      textScaleFactor: 1.0,
      homeModules: HomeModulesVisibility(
        showWeather: true,
        showSafety: true,
        showActivities: true,
      ),
    );
  }

  AppSettings copyWith({
    bool? isDarkMode,
    double? textScaleFactor,
    HomeModulesVisibility? homeModules,
  }) {
    return AppSettings(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      homeModules: homeModules ?? this.homeModules,
    );
  }
}
