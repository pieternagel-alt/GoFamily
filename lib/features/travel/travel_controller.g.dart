// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TravelEngineController)
const travelEngineControllerProvider = TravelEngineControllerProvider._();

final class TravelEngineControllerProvider
    extends $AsyncNotifierProvider<TravelEngineController, List<Trip>> {
  const TravelEngineControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'travelEngineControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$travelEngineControllerHash();

  @$internal
  @override
  TravelEngineController create() => TravelEngineController();
}

String _$travelEngineControllerHash() =>
    r'7d392c3f023c2a76f7624f53587bde0b4c981d0d';

abstract class _$TravelEngineController extends $AsyncNotifier<List<Trip>> {
  FutureOr<List<Trip>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Trip>>, List<Trip>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Trip>>, List<Trip>>,
              AsyncValue<List<Trip>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
