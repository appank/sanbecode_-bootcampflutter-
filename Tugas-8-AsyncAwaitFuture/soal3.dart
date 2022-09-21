void main(List<String> args) async {
  print("Ready to sing");
  print(await line());
  print(await line2());
  print(await line3());
  print(await line4());
}

Future<String> line() async {
  String song = "Pernahkah kau merasa . . . . .";
  return await Future.delayed(Duration(seconds: 5), () => (song));
}

Future<String> line2() async {
  String song = "Pernahkah kau merasa . . . . .";
  return await Future.delayed(Duration(seconds: 3), () => (song));
}

Future<String> line3() async {
  String song = "Pernahkah kau merasa . . . . .";
  return await Future.delayed(Duration(seconds: 2), () => (song));
}

Future<String> line4() async {
  String song = "Hatimu hampa, pernahkan kau merasa hatimu kosong . . . . .";
  return await Future.delayed(Duration(seconds: 1), () => (song));
}
