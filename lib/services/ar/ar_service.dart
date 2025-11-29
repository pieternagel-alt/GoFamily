import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ar_service.g.dart';

class ArService {
  const ArService();

  /// v0.9: Dummy-Implementierung – liefert nur "AR wird unterstützt" zurück.
  Future<bool> isSupported() async {
    await Future.delayed(const Duration(milliseconds: 120));
    return true;
  }
}

@riverpod
ArService arService(Ref ref) {
  return const ArService();
}
