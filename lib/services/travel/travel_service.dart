import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/travel/travel_models.dart';
import '../../features/travel/travel_repository.dart';

part 'travel_service.g.dart';

class TravelService {
  const TravelService(this._repository);

  final TravelRepository _repository;

  Future<List<Trip>> loadTrips() => _repository.loadTrips();
}

@riverpod
TravelService travelService(Ref ref) {
  return TravelService(const TravelRepository());
}
