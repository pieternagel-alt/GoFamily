import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'kids_missions_screen.dart';
import 'kids_stickers_screen.dart';

class KidsHomeScreen extends ConsumerWidget {
  const KidsHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kinderbereich')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            leading: const Icon(Icons.flag),
            title: const Text('Missionen'),
            subtitle: const Text('Aufgaben & Abenteuer'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const KidsMissionsScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.emoji_emotions),
            title: const Text('Sticker-Album'),
            subtitle: const Text('Gesammelte Sticker ansehen'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const KidsStickersScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
