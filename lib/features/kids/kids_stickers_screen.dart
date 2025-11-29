import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'stickers/sticker_models.dart';
import 'stickers/stickers_controller.dart';

class KidsStickersScreen extends ConsumerWidget {
  const KidsStickersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stickers = ref.watch(stickersControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Sticker Album')),
      body: stickers.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Text('Fehler: $e')),
        data: (list) => GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemCount: list.length,
          itemBuilder: (context, i) {
            final Sticker s = list[i];
            return CircleAvatar(
              radius: 32,
              backgroundColor: s.collected ? Colors.orange : Colors.grey,
              child: Text(s.emoji, style: const TextStyle(fontSize: 28)),
            );
          },
        ),
      ),
    );
  }
}
