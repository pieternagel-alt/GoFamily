// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(travelService)
const travelServiceProvider = TravelServiceProvider._();

final class TravelServiceProvider
    extends $FunctionalProvider<TravelService, TravelService, TravelService>
    with $Provider<TravelService> {
  const TravelServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'travelServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$travelServiceHash();

  @$internal
  @override
  $ProviderElement<TravelService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TravelService create(Ref ref) {
    return travelService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TravelService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TravelService>(value),
    );
  }
}

String _$travelServiceHash() => r'fac8423e8228c718eec626d0f039ec499c9c9730';
