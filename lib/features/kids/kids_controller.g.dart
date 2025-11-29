// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kids_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// v0.9: Placeholder-Controller, da Logik in Missions/Stickers liegt.
/// KidsController hält nur einfachen UI-State (z. B. ausgewähltes Tab etc.)

@ProviderFor(KidsController)
const kidsControllerProvider = KidsControllerProvider._();

/// v0.9: Placeholder-Controller, da Logik in Missions/Stickers liegt.
/// KidsController hält nur einfachen UI-State (z. B. ausgewähltes Tab etc.)
final class KidsControllerProvider
    extends $NotifierProvider<KidsController, int> {
  /// v0.9: Placeholder-Controller, da Logik in Missions/Stickers liegt.
  /// KidsController hält nur einfachen UI-State (z. B. ausgewähltes Tab etc.)
  const KidsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'kidsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$kidsControllerHash();

  @$internal
  @override
  KidsController create() => KidsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$kidsControllerHash() => r'29f4fdf80233a17c755b1d45f6ae1d40f796661c';

/// v0.9: Placeholder-Controller, da Logik in Missions/Stickers liegt.
/// KidsController hält nur einfachen UI-State (z. B. ausgewähltes Tab etc.)

abstract class _$KidsController extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
