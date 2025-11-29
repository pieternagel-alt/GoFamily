import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'missions/mission_models.dart';
import 'missions/missions_controller.dart';

class KidsMissionsScreen extends ConsumerWidget {
  const KidsMissionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final missions = ref.watch(missionsControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Missionen')),
      body: missions.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Text('Fehler: $e')),
        data: (list) => ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, i) {
            final Mission m = list[i];
            return ListTile(
              leading: const Icon(Icons.flag),
              title: Text(m.title),
              subtitle: Text(m.description),
            );
          },
        ),
      ),
    );
  }
}
