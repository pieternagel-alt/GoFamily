import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../features/weather/weather_models.dart';

class WeatherService {
  static const String _apiKey = "9cfa37ee1244795292a42ec908f696b8";

  Future<WeatherData> loadWeatherForCity(String city) async {
    final url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$_apiKey&units=metric&lang=de";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception("Weather API Fehler: ${response.statusCode}");
    }

    final data = jsonDecode(response.body);

    return WeatherData(
      location: data["name"] ?? city,
      temperature: (data["main"]["temp"] as num).toDouble(),
      condition: data["weather"][0]["description"] ?? "unbekannt",
      lastUpdated: DateTime.now(),
      isFromCache: false,
    );
  }
}
