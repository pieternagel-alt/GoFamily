import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/ar/ar_service.dart';

/// Provider für den AR-Service
final arServiceProvider = Provider<ArService>((ref) {
  return const ArService();
});

/// Liefert true/false, ob AR unterstützt wird (aktuell immer true)
final arSupportedProvider = Provider<bool>((ref) {
  final service = ref.watch(arServiceProvider);
  return service.isSupported;
});
