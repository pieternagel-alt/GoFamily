import 'sticker_models.dart';

class StickersRepository {
  const StickersRepository();

  Future<List<Sticker>> loadStickers() async {
    await Future.delayed(const Duration(milliseconds: 150));

    return const [
      Sticker(id: 's1', emoji: '🐶', title: 'Hund', collected: true),
      Sticker(id: 's2', emoji: '🐱', title: 'Katze', collected: true),
      Sticker(id: 's3', emoji: '🦊', title: 'Fuchs', collected: false),
    ];
  }
}
