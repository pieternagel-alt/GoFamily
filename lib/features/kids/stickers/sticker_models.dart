class Sticker {
  final String id;
  final String emoji;
  final String title;
  final bool collected;

  const Sticker({
    required this.id,
    required this.emoji,
    required this.title,
    this.collected = false,
  });

  Sticker copyWith({
    String? id,
    String? emoji,
    String? title,
    bool? collected,
  }) {
    return Sticker(
      id: id ?? this.id,
      emoji: emoji ?? this.emoji,
      title: title ?? this.title,
      collected: collected ?? this.collected,
    );
  }
}
