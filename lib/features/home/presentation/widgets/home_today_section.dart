import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gofamily/services/location/location_provider.dart';

class HomeTodaySection extends ConsumerWidget {
  const HomeTodaySection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationService = ref.watch(locationServiceProvider);

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
              return _content(city);
            },
          );
        }

        return _content(city);
      },
    );
  }

  Widget _content(String city) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title(city),
        const SizedBox(height: 24),
        _cards(),
        const SizedBox(height: 24),
        const _RecommendationCard(),
      ],
    );
  }

  Widget _title(String city) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _greeting(),
          style: const TextStyle(color: Colors.white, fontSize: 26),
        ),
        const SizedBox(height: 4),
        Text("in $city", style: const TextStyle(color: Colors.white70)),
      ],
    );
  }

  Widget _cards() {
    return Row(
      children: const [
        Expanded(
          child: _MiniCard(
            icon: Icons.directions_walk_rounded,
            title: "Schritte",
            value: "2413",
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: _MiniCard(
            icon: Icons.local_florist_rounded,
            title: "Waldzeit",
            value: "34 min",
          ),
        ),
      ],
    );
  }

  String _greeting() {
    final h = DateTime.now().hour;
    if (h < 12) return "Guten Morgen";
    if (h < 18) return "Guten Tag";
    return "Guten Abend";
  }
}

class _MiniCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _MiniCard({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: Colors.white),
              const SizedBox(height: 12),
              Text(title, style: const TextStyle(color: Colors.white70)),
              Text(
                value,
                style: const TextStyle(color: Colors.white, fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RecommendationCard extends StatelessWidget {
  const _RecommendationCard();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.14),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: const [
              Icon(Icons.bolt, color: Colors.white),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  "Heute ist ein guter Tag für eine kleine Waldmission!",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
              Icon(Icons.chevron_right, color: Colors.white70),
            ],
          ),
        ),
      ),
    );
  }
}
