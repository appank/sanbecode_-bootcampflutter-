class Lingkaran {
  double? _jari_jari1;
  double? _jari_jari2;
  double _phi = 3.14;

  void setJari1(double value) {
    if (value < 0) {
      value *= -1;
    }
    _jari_jari1 = value;
  }

  double? getjari1() {
    return _jari_jari1;
  }

  void setjari2(double value) {
    if (value < 0) {
      value *= -1;
    }
    _jari_jari2 = value;
  }

  double? getJari2() {
    return _jari_jari2;
  }

  double hitungluas() {
    return this._phi * this._jari_jari1! * this._jari_jari2!;
  }
}
