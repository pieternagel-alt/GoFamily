import 'package:flutter/material.dart';

import 'widgets/dev_section_card.dart';

class DevDashboardScreen extends StatelessWidget {
  const DevDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dev Dashboard")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          DevSectionCard(
            title: "System & Settings",
            routes: [
              ("App Settings testen", "/dev/settings"),
              ("Provider States anzeigen", "/dev/providers"),
            ],
          ),
          DevSectionCard(
            title: "Kids",
            routes: [
              ("Missionen testen", "/dev/kids/missions"),
              ("Sticker testen", "/dev/kids/stickers"),
            ],
          ),
          DevSectionCard(
            title: "Travel",
            routes: [("Trips testen", "/dev/travel")],
          ),
          DevSectionCard(
            title: "Weather",
            routes: [("Weather testen", "/dev/weather")],
          ),
          DevSectionCard(
            title: "Safety (Stub)",
            routes: [("Safety testen", "/dev/safety")],
          ),
        ],
      ),
    );
  }
}
