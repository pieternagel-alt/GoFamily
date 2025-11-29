class WeatherData {
  final String location;
  final double temperature;
  final String condition;
  final DateTime lastUpdated;
  final bool isFromCache;

  WeatherData({
    required this.location,
    required this.temperature,
    required this.condition,
    required this.lastUpdated,
    required this.isFromCache,
  });

  WeatherData copyWith({
    String? location,
    double? temperature,
    String? condition,
    DateTime? lastUpdated,
    bool? isFromCache,
  }) {
    return WeatherData(
      location: location ?? this.location,
      temperature: temperature ?? this.temperature,
      condition: condition ?? this.condition,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      isFromCache: isFromCache ?? this.isFromCache,
    );
  }
}
