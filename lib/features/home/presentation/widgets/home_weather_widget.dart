import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gofamily/features/weather/weather_controller.dart';
import 'package:gofamily/features/weather/weather_models.dart';
import 'package:gofamily/services/location/location_provider.dart';

class HomeWeatherWidget extends ConsumerWidget {
  const HomeWeatherWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherAsync = ref.watch(weatherControllerProvider);
    final locationService = ref.watch(locationServiceProvider);

    return weatherAsync.when(
      loading: () => _glass(
        const Text(
          "Wetter wird geladen…",
          style: TextStyle(color: Colors.white),
        ),
      ),
      error: (error, stack) => _glass(
        const Text("Keine Wetterdaten", style: TextStyle(color: Colors.white)),
      ),
      data: (WeatherData weather) {
        return FutureBuilder(
          future: locationService.getCurrentPosition(),
          builder: (context, posSnap) {
            String city = "—";

            if (posSnap.hasData && posSnap.data != null) {
              return FutureBuilder(
                future: locationService.getCityFromPosition(posSnap.data!),
                builder: (context, citySnap) {
                  if (citySnap.hasData && citySnap.data != null) {
                    city = citySnap.data!;
                  }
                  return _content(weather, city);
                },
              );
            }

            return _content(weather, city);
          },
        );
      },
    );
  }

  Widget _content(WeatherData weather, String city) {
    return _glass(
      Row(
        children: [
          _weatherIcon(weather.condition),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${weather.temperature.toStringAsFixed(1)}°C",
                style: const TextStyle(color: Colors.white, fontSize: 28),
              ),
              Text(
                weather.condition,
                style: const TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                city,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                weather.isFromCache ? "Aus Cache" : "Live",
                style: const TextStyle(color: Colors.white38, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _weatherIcon(String condition) {
    IconData icon = Icons.cloud;

    final c = condition.toLowerCase();
    if (c.contains("sun")) icon = Icons.wb_sunny_rounded;
    if (c.contains("rain")) icon = Icons.umbrella_rounded;
    if (c.contains("snow")) icon = Icons.ac_unit_rounded;
    if (c.contains("storm") || c.contains("thunder")) {
      icon = Icons.flash_on_rounded;
    }

    return Icon(icon, color: Colors.white, size: 48);
  }

  Widget _glass(Widget child) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(20),
          ),
          child: child,
        ),
      ),
    );
  }
}
