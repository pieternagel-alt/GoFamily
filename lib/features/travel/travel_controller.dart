import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'travel_models.dart';

part 'travel_controller.g.dart';

@riverpod
class TravelEngineController extends _$TravelEngineController {
  @override
  Future<List<Trip>> build() async {
    return const [
      Trip(id: 't1', title: 'Wochenende am See', location: 'Chiemsee'),
      Trip(id: 't2', title: 'Stadttour', location: 'München'),
    ];
  }
}
