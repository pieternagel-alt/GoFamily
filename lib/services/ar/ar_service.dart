/// Platzhalter-Service für AR-Funktionen.
/// Aktuell nur eine Dummy-Implementierung,
/// damit `ar_controller.dart` ohne Fehler kompiliert.
class ArService {
  /// Später kannst du hier z.B. ARCore / ARKit abfragen.
  /// Für jetzt: einfache Dummy-Rückgabe.
  Future<bool> isSupported() async {
    // TODO: echte AR-Unterstützung prüfen
    return false;
  }
}
