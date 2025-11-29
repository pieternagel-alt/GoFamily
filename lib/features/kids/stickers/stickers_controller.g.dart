// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stickers_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StickersController)
const stickersControllerProvider = StickersControllerProvider._();

final class StickersControllerProvider
    extends $AsyncNotifierProvider<StickersController, List<Sticker>> {
  const StickersControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'stickersControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$stickersControllerHash();

  @$internal
  @override
  StickersController create() => StickersController();
}

String _$stickersControllerHash() =>
    r'3a2d54542ad312d33b6b905e99116e37502ca37b';

abstract class _$StickersController extends $AsyncNotifier<List<Sticker>> {
  FutureOr<List<Sticker>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Sticker>>, List<Sticker>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Sticker>>, List<Sticker>>,
              AsyncValue<List<Sticker>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
