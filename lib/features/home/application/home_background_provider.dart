import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Einfacher Toggle für Kids-Mode (wird später durch echten Kids-State ersetzt)
final kidsModeProvider = StateProvider<bool>((ref) => false);

/// Liefert den passenden Hintergrund (Kids / Light / Dark)
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
