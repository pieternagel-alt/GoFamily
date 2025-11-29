import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/kids/stickers/sticker_models.dart';
import '../../features/kids/stickers/stickers_repository.dart';

part 'stickers_service.g.dart';

class StickersService {
  const StickersService(this._repository);

  final StickersRepository _repository;

  Future<List<Sticker>> loadStickers() => _repository.loadStickers();
}

@riverpod
StickersService stickersService(Ref ref) {
  return StickersService(const StickersRepository());
}
