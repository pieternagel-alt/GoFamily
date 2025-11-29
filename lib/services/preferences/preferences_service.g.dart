// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(preferencesService)
const preferencesServiceProvider = PreferencesServiceProvider._();

final class PreferencesServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<PreferencesService>,
          PreferencesService,
          FutureOr<PreferencesService>
        >
    with
        $FutureModifier<PreferencesService>,
        $FutureProvider<PreferencesService> {
  const PreferencesServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'preferencesServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$preferencesServiceHash();

  @$internal
  @override
  $FutureProviderElement<PreferencesService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PreferencesService> create(Ref ref) {
    return preferencesService(ref);
  }
}

String _$preferencesServiceHash() =>
    r'67bf54bd0b44990e25c5248e643f250b0f61b510';
