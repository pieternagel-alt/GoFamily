import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'safety_controller.g.dart';

@riverpod
class SafetyController extends _$SafetyController {
  @override
  Future<void> build() async {
    // v0.8: noch keine konkrete Safety-Logik.
    await Future.delayed(Duration(milliseconds: 200));
  }
}
