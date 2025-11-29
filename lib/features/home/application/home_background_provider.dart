import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Merker, ob der Kids-Mode aktiv ist.
/// (Später kannst du das mit deinem echten Kids-State verbinden.)
final kidsModeProvider = StateProvider<bool>((ref) => false);

/// Liefert den Pfad zum passenden Hintergrundbild
/// abhängig von:
///  - Kids-Mode
///  - System-Helligkeit (Hell/Dunkel)
final homeBackgroundProvider = Provider<String>((ref) {
  final isKids = ref.watch(kidsModeProvider);
  final brightness =
      WidgetsBinding.instance.platformDispatcher.platformBrightness;

  if (isKids) {
    return 'assets/images/backgrounds/home_kids.png';
  }

  if (brightness == Brightness.dark) {
    return 'assets/images/backgrounds/home_dark.png';
  }

  return 'assets/images/backgrounds/home_light.png';
});
