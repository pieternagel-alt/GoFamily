import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../kids/missions/missions_controller.dart';

class MissionsTestScreen extends ConsumerWidget {
  const MissionsTestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final missions = ref.watch(missionsControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Missionen Test")),
      body: missions.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Text("Fehler: $e")),
        data: (items) => ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) => ListTile(
            leading: const Icon(Icons.flag),
            title: Text(items[i].title),
            subtitle: Text(items[i].description),
          ),
        ),
      ),
    );
  }
}
