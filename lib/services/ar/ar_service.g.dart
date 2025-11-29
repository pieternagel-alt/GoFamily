// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ar_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(arService)
const arServiceProvider = ArServiceProvider._();

final class ArServiceProvider
    extends $FunctionalProvider<ArService, ArService, ArService>
    with $Provider<ArService> {
  const ArServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'arServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$arServiceHash();

  @$internal
  @override
  $ProviderElement<ArService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ArService create(Ref ref) {
    return arService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ArService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ArService>(value),
    );
  }
}

String _$arServiceHash() => r'5f170989f589777d7af36df4b931c6abb9f5af37';
