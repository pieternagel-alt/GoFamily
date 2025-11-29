import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// Provider-Imports
import 'package:gofamily/core/app_state/app_settings_controller.dart';
import 'package:gofamily/features/home/home_controller.dart';
import 'package:gofamily/features/kids/kids_controller.dart';
import 'package:gofamily/features/kids/missions/missions_controller.dart';
import 'package:gofamily/features/kids/stickers/stickers_controller.dart';
import 'package:gofamily/features/safety/safety_controller.dart';
import 'package:gofamily/features/travel/travel_controller.dart';
import 'package:gofamily/features/weather/weather_controller.dart';

class DevProviderPanel extends ConsumerWidget {
  const DevProviderPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(weatherControllerProvider);
    final home = ref.watch(homeControllerProvider);
    final kids = ref.watch(kidsControllerProvider);
    final missions = ref.watch(missionsControllerProvider);
    final stickers = ref.watch(stickersControllerProvider);
    final travel = ref.watch(travelEngineControllerProvider);
    final appSettings = ref.watch(appSettingsControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Provider Panel")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Provider States:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          Text("Weather: ${weather.toString()}"),
          Text("Home: ${home.toString()}"),
          Text("Kids: ${kids.toString()}"),
          Text("Missions: ${missions.toString()}"),
          Text("Stickers: ${stickers.toString()}"),
          Text("Travel: ${travel.toString()}"),

          // Safety liefert void → FIX:
          const Text("Safety: OK"),

          Text("Settings: ${appSettings.toString()}"),

          const SizedBox(height: 24),

          ElevatedButton(
            onPressed: () {
              ref.invalidate(weatherControllerProvider);
              ref.invalidate(homeControllerProvider);
              ref.invalidate(kidsControllerProvider);
              ref.invalidate(missionsControllerProvider);
              ref.invalidate(stickersControllerProvider);
              ref.invalidate(travelEngineControllerProvider);
              ref.invalidate(safetyControllerProvider);
              ref.invalidate(appSettingsControllerProvider);
            },
            child: const Text("Alle Provider refreshen"),
          ),
        ],
      ),
    );
  }
}
