import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Einfacher Platzhalter-Service für dein Travel-Feature.
class TravelService {
  String getStatus() => 'OK';
}

/// Provider, falls du ihn irgendwo per Riverpod nutzen willst.
final travelServiceProvider = Provider<TravelService>((ref) {
  return TravelService();
});
