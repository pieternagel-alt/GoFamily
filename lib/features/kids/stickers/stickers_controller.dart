import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'sticker_models.dart';
import 'stickers_repository.dart';

part 'stickers_controller.g.dart';

@riverpod
class StickersController extends _$StickersController {
  @override
  Future<List<Sticker>> build() async {
    final repo = const StickersRepository();
    return repo.loadStickers();
  }
}
