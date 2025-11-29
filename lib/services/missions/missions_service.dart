import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/kids/missions/mission_models.dart';
import '../../features/kids/missions/missions_repository.dart';

part 'missions_service.g.dart';

class MissionsService {
  const MissionsService(this._repository);
  final MissionsRepository _repository;

  Future<List<Mission>> loadMissions() => _repository.loadMissions();
}

@riverpod
MissionsService missionsService(Ref ref) {
  return MissionsService(const MissionsRepository());
}
