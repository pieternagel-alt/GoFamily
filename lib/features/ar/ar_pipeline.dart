class ArPipeline {
  const ArPipeline();

  Future<bool> initialize() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Future<void> startSession() async {
    await Future.delayed(const Duration(milliseconds: 100));
  }

  Future<void> stopSession() async {
    await Future.delayed(const Duration(milliseconds: 100));
  }
}
