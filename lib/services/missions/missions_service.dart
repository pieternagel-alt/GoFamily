import 'package:flutter_riverpod/flutter_riverpod.dart';

class MissionsService {
  MissionsService();

  Future<List<String>> loadMissions() async {
    return ["Mission A", "Mission B"];
  }
}

final missionsServiceProvider = Provider<MissionsService>((ref) {
  return MissionsService();
});
