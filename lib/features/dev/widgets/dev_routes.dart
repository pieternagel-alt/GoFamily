// File - lib/features/dev/widgets/dev_routes.dart
import 'package:flutter/material.dart';

import '../kids/missions_test_screen.dart';
import '../kids/stickers_test_screen.dart';
import '../safety/safety_test_screen.dart';
import '../settings/app_settings_test_screen.dart';
import '../travel/travel_test_screen.dart';
import '../weather/weather_test_screen.dart';
import '../widgets/dev_provider_panel.dart';

class DevRoutes {
  static Map<String, WidgetBuilder> routes = {
    "/dev/settings": (context) => const AppSettingsTestScreen(),
    "/dev/providers": (context) => const DevProviderPanel(),
    "/dev/kids/missions": (context) => const MissionsTestScreen(),
    "/dev/kids/stickers": (context) => const StickersTestScreen(),
    "/dev/travel": (context) => const TravelTestScreen(),
    "/dev/weather": (context) => const WeatherTestScreen(),
    "/dev/safety": (context) => const SafetyTestScreen(),
  };
}
