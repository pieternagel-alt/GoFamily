// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SafetyController)
const safetyControllerProvider = SafetyControllerProvider._();

final class SafetyControllerProvider
    extends $AsyncNotifierProvider<SafetyController, void> {
  const SafetyControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'safetyControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$safetyControllerHash();

  @$internal
  @override
  SafetyController create() => SafetyController();
}

String _$safetyControllerHash() => r'8c3aa1bf62040a5763e2b2e2657b8fd96bfd041d';

abstract class _$SafetyController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
