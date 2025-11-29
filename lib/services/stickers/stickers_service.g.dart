// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stickers_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(stickersService)
const stickersServiceProvider = StickersServiceProvider._();

final class StickersServiceProvider
    extends
        $FunctionalProvider<StickersService, StickersService, StickersService>
    with $Provider<StickersService> {
  const StickersServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'stickersServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$stickersServiceHash();

  @$internal
  @override
  $ProviderElement<StickersService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  StickersService create(Ref ref) {
    return stickersService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StickersService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StickersService>(value),
    );
  }
}

String _$stickersServiceHash() => r'f86df3892ec7531b0e5b7eef377f95cd6e501d68';
