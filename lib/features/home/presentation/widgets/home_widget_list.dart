import 'dart:ui';

import 'package:flutter/material.dart';

class HomeWidgetList extends StatelessWidget {
  const HomeWidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _HomeCard(
          title: "Letzte Mission",
          subtitle: "Entdecke deine heutige Herausforderung",
          icon: Icons.flag,
        ),
        SizedBox(height: 16),
        _HomeCard(
          title: "Highlights",
          subtitle: "Deine schönsten Momente",
          icon: Icons.photo_library,
        ),
        SizedBox(height: 16),
        _HomeCard(
          title: "Entdeckungen",
          subtitle: "Tiere, Pflanzen, Orte",
          icon: Icons.nature,
        ),
      ],
    );
  }
}

class _HomeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const _HomeCard({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.14),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.16),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: Colors.white),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: Colors.white70),
            ],
          ),
        ),
      ),
    );
  }
}
