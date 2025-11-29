import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../services/ar/ar_service.dart';
import 'ar_models.dart';
import 'ar_pipeline.dart';

part 'ar_controller.g.dart';

@riverpod
class ArController extends _$ArController {
  @override
  Future<ArSessionState> build() async {
    final service = ref.watch(arServiceProvider);
    final supported = await service.isSupported();
    return ArSessionState(isSupported: supported, isRunning: false);
  }

  Future<void> start() async {
    final pipeline = ArPipeline();
    await pipeline.initialize();
    await pipeline.startSession();
    state = AsyncData(state.value!.copyWith(isRunning: true));
  }

  Future<void> stop() async {
    final pipeline = ArPipeline();
    await pipeline.stopSession();
    state = AsyncData(state.value!.copyWith(isRunning: false));
  }
}
