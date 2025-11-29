enum MissionStatus { locked, available, inProgress, completed }

class Mission {
  final String id;
  final String title;
  final String description;
  final MissionStatus status;
  final int rewardPoints;
  final String? rewardStickerId;

  const Mission({
    required this.id,
    required this.title,
    required this.description,
    this.status = MissionStatus.available,
    this.rewardPoints = 0,
    this.rewardStickerId,
  });

  Mission copyWith({
    String? id,
    String? title,
    String? description,
    MissionStatus? status,
    int? rewardPoints,
    String? rewardStickerId,
  }) {
    return Mission(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
      rewardPoints: rewardPoints ?? this.rewardPoints,
      rewardStickerId: rewardStickerId ?? this.rewardStickerId,
    );
  }
}
