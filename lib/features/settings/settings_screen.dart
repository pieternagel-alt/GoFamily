// File: lib/features/settings/settings_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/app_state/app_settings.dart';
import '../../core/app_state/app_settings_controller.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsAsync = ref.watch(appSettingsControllerProvider);

    return settingsAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, s) => Scaffold(body: Center(child: Text('Fehler: $e'))),
      data: (settings) => _SettingsContent(settings: settings),
    );
  }
}

class _SettingsContent extends ConsumerWidget {
  final AppSettings settings;

  const _SettingsContent({required this.settings});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Einstellungen')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: settings.isDarkMode,
            onChanged: (value) async {
              await ref
                  .read(appSettingsControllerProvider.notifier)
                  .toggleDarkMode();
            },
          ),

          ListTile(
            title: const Text('Textgröße'),
            subtitle: Text('${settings.textScaleFactor.toStringAsFixed(1)}x'),
          ),

          const Divider(),

          ListTile(
            title: const Text('Sichtbare Module'),
            subtitle: const Text('Diese Optionen beeinflussen den Home-Screen'),
          ),

          SwitchListTile(
            title: const Text('Wetter anzeigen'),
            value: settings.homeModules.showWeather,
            onChanged: (value) async {
              await ref
                  .read(appSettingsControllerProvider.notifier)
                  .setHomeModuleVisibility(HomeModule.weather, value);
            },
          ),

          SwitchListTile(
            title: const Text('Sicherheit anzeigen'),
            value: settings.homeModules.showSafety,
            onChanged: (value) async {
              await ref
                  .read(appSettingsControllerProvider.notifier)
                  .setHomeModuleVisibility(HomeModule.safety, value);
            },
          ),

          SwitchListTile(
            title: const Text('Aktivitäten anzeigen'),
            value: settings.homeModules.showActivities,
            onChanged: (value) async {
              await ref
                  .read(appSettingsControllerProvider.notifier)
                  .setHomeModuleVisibility(HomeModule.activities, value);
            },
          ),
        ],
      ),
    );
  }
}
