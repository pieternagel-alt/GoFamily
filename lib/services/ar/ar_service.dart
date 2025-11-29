/// Sehr einfacher AR-Service für v0.9
class ArService {
  const ArService();

  /// Später: echte Gerätekontrolle, ob AR unterstützt wird.
  /// Jetzt: immer true, damit das UI weiterkommt.
  bool get isSupported => true;
}
