void main(List<String> args) {
  var h = Human();
  print("Luffy");
  print("Zoro");
  print("Nami");
  h.getData().then((value) => print("name: 3:" + h.name));
  print(h.name);
}

class Human {
  String name = "nama charackter one piece";
  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 3));
    name = "hilmy";
    print("get data [done]");
  }
}
