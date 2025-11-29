import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'travel_controller.dart';
import 'travel_models.dart';

class TravelScreen extends ConsumerWidget {
  const TravelScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trips = ref.watch(travelEngineControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Reisen & Aktivitäten")),
      body: trips.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Text('Fehler: $e')),
        data: (list) => ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            final Trip trip = list[index];
            return ListTile(
              title: Text(trip.title),
              subtitle: Text(trip.location ?? 'Unbekannter Ort'),
            );
          },
        ),
      ),
    );
  }
}
