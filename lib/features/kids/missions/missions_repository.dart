import 'mission_models.dart';

class MissionsRepository {
  const MissionsRepository();

  Future<List<Mission>> loadMissions() async {
    await Future.delayed(const Duration(milliseconds: 200));

    return const [
      Mission(
        id: 'm1',
        title: 'Finde ein Tier in deiner Nähe',
        description: 'Schau dich um und entdecke Tiere in deiner Nähe.',
        rewardPoints: 10,
        rewardStickerId: 's1',
      ),
      Mission(
        id: 'm2',
        title: 'Sammle 3 Sticker',
        description: 'Verdiene dir Sticker durch Aufgaben.',
        rewardPoints: 20,
        rewardStickerId: 's2',
      ),
    ];
  }

  Future<Mission?> getMissionById(String id) async {
    final all = await loadMissions();
    try {
      return all.firstWhere((m) => m.id == id);
    } catch (_) {
      return null;
    }
  }
}
