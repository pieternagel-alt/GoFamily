import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'mission_models.dart';
import 'missions_repository.dart';

part 'missions_controller.g.dart';

@riverpod
class MissionsController extends _$MissionsController {
  @override
  Future<List<Mission>> build() async {
    final repo = const MissionsRepository();
    return repo.loadMissions();
  }
}
