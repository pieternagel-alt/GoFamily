import 'travel_models.dart';

class TravelRepository {
  const TravelRepository();

  Future<List<Trip>> loadTrips() async {
    await Future.delayed(const Duration(milliseconds: 200));

    return const [
      Trip(id: 't1', title: 'Stadtausflug', location: 'Innenstadt'),
      Trip(id: 't2', title: 'Zoobesuch', location: 'Stadt-Zoo'),
    ];
  }
}
