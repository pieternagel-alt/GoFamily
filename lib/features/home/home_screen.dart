import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gofamily/core/app_state/app_settings_controller.dart';
import 'package:gofamily/features/kids/kids_home_screen.dart';
import 'package:gofamily/features/safety/safety_screen.dart';
import 'package:gofamily/features/travel/travel_screen.dart';
import 'package:gofamily/features/weather/weather_controller.dart';
import 'package:gofamily/features/weather/weather_models.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(appSettingsControllerProvider);
    final weather = ref.watch(weatherControllerProvider);

    return settings.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, stack) => Scaffold(
        body: Center(
          child: Text('Fehler beim Laden der Einstellungen: $error'),
        ),
      ),
      data: (appSettings) {
        final modules = appSettings.homeModules;

        return Scaffold(
          appBar: AppBar(title: const Text('GoFamily')),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              if (modules.showWeather) _HomeWeatherCard(weather: weather),
              const SizedBox(height: 16),

              if (modules.showSafety)
                _HomeNavigationCard(
                  title: 'Sicherheit',
                  subtitle: 'Sicherheitsbereich öffnen',
                  icon: Icons.shield,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SafetyScreen()),
                    );
                  },
                ),
              const SizedBox(height: 16),

              if (modules.showActivities)
                _HomeNavigationCard(
                  title: 'Reisen & Aktivitäten',
                  subtitle: 'Reiseplanung & Ausflüge',
                  icon: Icons.travel_explore,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const TravelScreen()),
                    );
                  },
                ),
              const SizedBox(height: 16),

              _HomeNavigationCard(
                title: 'Kinderbereich',
                subtitle: 'Missionen & Sticker',
                icon: Icons.child_care,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const KidsHomeScreen()),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _HomeWeatherCard extends StatelessWidget {
  final AsyncValue<WeatherData> weather;

  const _HomeWeatherCard({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: weather.when(
          loading: () => const Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 12),
              Text('Wetter wird geladen...'),
            ],
          ),
          error: (error, stack) =>
              Text('Fehler beim Laden des Wetters: $error'),
          data: (data) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Heutiges Wetter',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('${data.temperature.toStringAsFixed(1)}°C'),
                  Text(data.condition),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeNavigationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _HomeNavigationCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}
