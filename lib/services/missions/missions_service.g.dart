// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'missions_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(missionsService)
const missionsServiceProvider = MissionsServiceProvider._();

final class MissionsServiceProvider
    extends
        $FunctionalProvider<MissionsService, MissionsService, MissionsService>
    with $Provider<MissionsService> {
  const MissionsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'missionsServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$missionsServiceHash();

  @$internal
  @override
  $ProviderElement<MissionsService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MissionsService create(Ref ref) {
    return missionsService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MissionsService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MissionsService>(value),
    );
  }
}

String _$missionsServiceHash() => r'ec15a1880a0efe6c2610f0137b03480a27ade206';
