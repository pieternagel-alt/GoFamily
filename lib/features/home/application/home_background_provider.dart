import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// TODO: Später durch echten Kids-Mode-Provider ersetzen
final kidsModeProvider = StateProvider<bool>((ref) => false);

/// Wählt den passenden Hintergrund je nach Theme + Kids Mode
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
