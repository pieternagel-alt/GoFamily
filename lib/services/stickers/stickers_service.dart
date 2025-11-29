import 'package:flutter_riverpod/flutter_riverpod.dart';

class StickersService {
  StickersService();

  Future<List<String>> loadStickers() async {
    return ["Sticker1", "Sticker2"];
  }
}

final stickersServiceProvider = Provider<StickersService>((ref) {
  return StickersService();
});
