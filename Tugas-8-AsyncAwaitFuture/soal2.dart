import '../Tugas-2-TypeData/type.dart';

void main(List<String> args) {
  print("Life");
  delayedPrint(2, "never flat").then((status) {
    print(status);
  });
  print("is");
}

Future delayedPrint(int second, String message) {
  final duration = Duration(seconds: second);
  return Future.delayed(duration).then((value) => message);
}
