import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../weather/weather_controller.dart';

class WeatherTestScreen extends ConsumerWidget {
  const WeatherTestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(weatherControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Weather Test")),
      body: weather.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Text("Fehler: $e")),
        data: (w) => Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ort: ${w.location}", style: const TextStyle(fontSize: 20)),
              Text("Temperatur: ${w.temperature}°C"),
              Text("Zustand: ${w.condition}"),
              Text("Aktualisiert: ${w.lastUpdated}"),
            ],
          ),
        ),
      ),
    );
  }
}
