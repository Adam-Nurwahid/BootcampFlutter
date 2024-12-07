class Lingkaran {
  double _jariJari = 0.0;
  late double _ruas;
  set jariJari(double value) {
    if (value < 0) {
      _jariJari = value * -1;
    } else {
      _jariJari = value;
    }
  }

  double get jariJari => _jariJari;
  double hitungLuas() {
    _ruas = 3.14 * _jariJari * _jariJari;
    return _ruas;
  }

  double getRuas() => _ruas;
  void setRuas(double value) {
    _ruas = value;
  }
}
