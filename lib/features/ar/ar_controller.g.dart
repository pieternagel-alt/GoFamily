// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ar_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ArController)
const arControllerProvider = ArControllerProvider._();

final class ArControllerProvider
    extends $AsyncNotifierProvider<ArController, ArSessionState> {
  const ArControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'arControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$arControllerHash();

  @$internal
  @override
  ArController create() => ArController();
}

String _$arControllerHash() => r'a98ac6f4085c4d1e72373f26c5b919f3b8a637b4';

abstract class _$ArController extends $AsyncNotifier<ArSessionState> {
  FutureOr<ArSessionState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ArSessionState>, ArSessionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ArSessionState>, ArSessionState>,
              AsyncValue<ArSessionState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
