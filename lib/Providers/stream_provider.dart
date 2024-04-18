
// Steream Provider benötigt eine normale Klasse und eine Stream Funktion
// Stream Funktion gibt zurück eine Stream mit verschidene Objekte der gegebene Klasse
Stream<StreamTimer> getStreamTimer() {
  return Stream<StreamTimer>.periodic(
    Duration(milliseconds: 50),
    (x) => StreamTimer(timerNumber: x),
  ).take(100);
}

class StreamTimer {
  int timerNumber;
  StreamTimer({
    required this.timerNumber,
  });
}
