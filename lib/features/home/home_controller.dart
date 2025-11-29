import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

class HomeState {
  final String status;

  const HomeState({this.status = "ready"});

  HomeState copyWith({String? status}) {
    return HomeState(status: status ?? this.status);
  }
}

@riverpod
class HomeController extends _$HomeController {
  @override
  HomeState build() {
    return const HomeState();
  }

  void setStatus(String newStatus) {
    state = state.copyWith(status: newStatus);
  }
}
