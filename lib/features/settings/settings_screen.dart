// File: lib/features/settings/settings_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gofamily/core/app_state/app_settings.dart';
import 'package:gofamily/core/app_state/app_settings_controller.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(appSettingsControllerProvider);

    return _SettingsContent(settings: settings);
  }
}

class _SettingsContent extends ConsumerWidget {
  final AppSettings settings;

  const _SettingsContent({required this.settings, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Einstellungen')),
      body: ListView(
        children: [
          // DARK MODE
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: settings.isDarkMode,
            onChanged: (value) {
              ref
                  .read(appSettingsControllerProvider.notifier)
                  .toggleDarkMode(value);
            },
          ),

          // TEXT SIZE
          ListTile(
            title: const Text('Textgröße'),
            subtitle: Text('${settings.textScaleFactor.toStringAsFixed(1)}x'),
            onTap: () {
              // hier kann später ein Slider/Dialog hin
            },
          ),

          const Divider(),

          // HOME MODULE VISIBILITY
          ListTile(
            title: const Text('Sichtbare Module'),
            subtitle: const Text('Diese Optionen beeinflussen den Home-Screen'),
          ),

          // WEATHER
          SwitchListTile(
            title: const Text('Wetter anzeigen'),
            value: settings.homeModules.showWeather,
            onChanged: (value) {
              ref
                  .read(appSettingsControllerProvider.notifier)
                  .setHomeModuleVisibility(HomeModule.weather, value);
            },
          ),

          // SAFETY
          SwitchListTile(
            title: const Text('Sicherheit anzeigen'),
            value: settings.homeModules.showSafety,
            onChanged: (value) {
              ref
                  .read(appSettingsControllerProvider.notifier)
                  .setHomeModuleVisibility(HomeModule.safety, value);
            },
          ),

          // ACTIVITIES
          SwitchListTile(
            title: const Text('Aktivitäten anzeigen'),
            value: settings.homeModules.showActivities,
            onChanged: (value) {
              ref
                  .read(appSettingsControllerProvider.notifier)
                  .setHomeModuleVisibility(HomeModule.activities, value);
            },
          ),
        ],
      ),
    );
  }
}
