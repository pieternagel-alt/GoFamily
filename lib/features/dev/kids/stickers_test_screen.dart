import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../kids/stickers/stickers_controller.dart';

class StickersTestScreen extends ConsumerWidget {
  const StickersTestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stickers = ref.watch(stickersControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Sticker Test")),
      body: stickers.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Text("Fehler: $e")),
        data: (items) => ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) => ListTile(
            leading: Text(items[i].emoji, style: const TextStyle(fontSize: 28)),
            title: Text(items[i].title),
            subtitle: Text(items[i].collected ? "gesammelt" : "fehlt"),
          ),
        ),
      ),
    );
  }
}
