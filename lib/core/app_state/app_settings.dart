class AppSettings {
  final bool isDarkMode;
  final double textScaleFactor;
  final HomeModulesVisibility homeModules;

  const AppSettings({
    this.isDarkMode = false,
    this.textScaleFactor = 1.0,
    this.homeModules = const HomeModulesVisibility(),
  });

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

  Map<String, dynamic> toJson() => {
    'isDarkMode': isDarkMode,
    'textScaleFactor': textScaleFactor,
    'homeModules': homeModules.toJson(),
  };

  factory AppSettings.fromJson(Map<String, dynamic> json) {
    return AppSettings(
      isDarkMode: json['isDarkMode'] as bool? ?? false,
      textScaleFactor: (json['textScaleFactor'] as num?)?.toDouble() ?? 1.0,
      homeModules: json['homeModules'] is Map<String, dynamic>
          ? HomeModulesVisibility.fromJson(
              json['homeModules'] as Map<String, dynamic>,
            )
          : const HomeModulesVisibility(),
    );
  }
}

enum HomeModule { weather, safety, activities }

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

  Map<String, dynamic> toJson() => {
    'showWeather': showWeather,
    'showSafety': showSafety,
    'showActivities': showActivities,
  };

  factory HomeModulesVisibility.fromJson(Map<String, dynamic> json) {
    return HomeModulesVisibility(
      showWeather: json['showWeather'] as bool? ?? true,
      showSafety: json['showSafety'] as bool? ?? true,
      showActivities: json['showActivities'] as bool? ?? true,
    );
  }
}
