class ArSessionState {
  final bool isSupported;
  final bool isRunning;

  const ArSessionState({required this.isSupported, required this.isRunning});

  ArSessionState copyWith({bool? isSupported, bool? isRunning}) {
    return ArSessionState(
      isSupported: isSupported ?? this.isSupported,
      isRunning: isRunning ?? this.isRunning,
    );
  }
}
