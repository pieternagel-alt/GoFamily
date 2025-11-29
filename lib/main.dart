import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/dev/dev_dashboard_screen.dart';
import 'features/dev/widgets/dev_routes.dart';

void main() {
  runApp(const ProviderScope(child: GoFamilyApp()));
}

class GoFamilyApp extends StatelessWidget {
  const GoFamilyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GoFamily',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const DevDashboardScreen(), // Test-UI Einstiegspunkt
      routes: DevRoutes.routes,
    );
  }
}
