// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'missions_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MissionsController)
const missionsControllerProvider = MissionsControllerProvider._();

final class MissionsControllerProvider
    extends $AsyncNotifierProvider<MissionsController, List<Mission>> {
  const MissionsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'missionsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$missionsControllerHash();

  @$internal
  @override
  MissionsController create() => MissionsController();
}

String _$missionsControllerHash() =>
    r'1929af8c79bb84def8a44dddde4255e4d3d24393';

abstract class _$MissionsController extends $AsyncNotifier<List<Mission>> {
  FutureOr<List<Mission>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Mission>>, List<Mission>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Mission>>, List<Mission>>,
              AsyncValue<List<Mission>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
