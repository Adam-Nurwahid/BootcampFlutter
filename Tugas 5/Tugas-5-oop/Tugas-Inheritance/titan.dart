class Titan {
  late double _powerPoint; // Property untuk powerPoint

  // Setter untuk powerPoint
  set powerPoint(double value) {
    _powerPoint = (value < 5) ? 5 : value; // Jika nilai kurang dari 5, set ke 5
  }

  // Getter untuk powerPoint
  double get powerPoint => _powerPoint;
}
