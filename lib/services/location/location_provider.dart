import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gofamily/services/location/location_service.dart';

final locationServiceProvider = Provider<LocationService>((ref) {
  return LocationService();
});
