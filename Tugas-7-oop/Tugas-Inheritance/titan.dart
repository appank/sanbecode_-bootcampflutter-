class Titan {
  int? _levelpoint;

  int get levelpoint => _levelpoint!;
  set levelpoint(int value) {
    if (value <= 5) {
      value = 5;
    }
    _levelpoint = value;
  }
}
