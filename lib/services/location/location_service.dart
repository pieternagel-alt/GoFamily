import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  // 1) Berechtigung anfragen
  Future<bool> _checkPermission() async {
    bool enabled = await Geolocator.isLocationServiceEnabled();
    if (!enabled) return false;

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return false;
    }

    if (permission == LocationPermission.deniedForever) return false;

    return true;
  }

  // 2) Koordinaten holen
  Future<Position?> getCurrentPosition() async {
    bool allowed = await _checkPermission();
    if (!allowed) return null;

    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  // 3) Stadtname aus Koordinaten holen
  Future<String?> getCityFromPosition(Position pos) async {
    List<Placemark> marks = await placemarkFromCoordinates(
      pos.latitude,
      pos.longitude,
    );

    if (marks.isEmpty) return null;

    return marks.first.locality; // z. B. "Berlin"
  }
}
