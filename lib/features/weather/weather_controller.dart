import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../services/location/location_service.dart';
import '../../services/weather/weather_service.dart';
import 'weather_models.dart';

part 'weather_controller.g.dart';

@riverpod
class WeatherController extends _$WeatherController {
  @override
  Future<WeatherData> build() async {
    final locationService = LocationService();
    final weatherService = WeatherService();

    // 1) GPS holen
    final pos = await locationService.getCurrentPosition();
    if (pos == null) {
      return WeatherData(
        location: "Unbekannt",
        temperature: 0,
        condition: "Keine Berechtigung",
        lastUpdated: DateTime.now(),
        isFromCache: true,
      );
    }

    // 2) Stadtname aus GPS
    final city = await locationService.getCityFromPosition(pos);

    if (city == null) {
      return WeatherData(
        location: "Unbekannt",
        temperature: 0,
        condition: "Keine Stadt gefunden",
        lastUpdated: DateTime.now(),
        isFromCache: true,
      );
    }

    // 3) Wetter abrufen
    return weatherService.loadWeatherForCity(city);
  }

  // Manuelles Refresh für Test-UI
  Future<void> refresh() async {
    state = const AsyncLoading();
    state = AsyncData(await build());
  }
}
