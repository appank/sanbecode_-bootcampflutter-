void main(List<String> args) {
  segitiga _segitiga;
  double luassegitiga;

  _segitiga = new segitiga();
  _segitiga._setengah = 0.5;
  _segitiga._alas = 20.0;
  _segitiga._tinggi = 30.0;
  luassegitiga = _segitiga.hitungluas();
  print(luassegitiga);
}

class segitiga {
  double? _setengah;
  double? _alas;
  double? _tinggi;

  double hitungluas() {
    return this._setengah! * this._alas! * this._tinggi!;
  }
}
