// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WeatherController)
const weatherControllerProvider = WeatherControllerProvider._();

final class WeatherControllerProvider
    extends $AsyncNotifierProvider<WeatherController, WeatherData> {
  const WeatherControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherControllerHash();

  @$internal
  @override
  WeatherController create() => WeatherController();
}

String _$weatherControllerHash() => r'283221238e8ee6e6b2218745d44f9d4b4c8076b5';

abstract class _$WeatherController extends $AsyncNotifier<WeatherData> {
  FutureOr<WeatherData> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<WeatherData>, WeatherData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<WeatherData>, WeatherData>,
              AsyncValue<WeatherData>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
