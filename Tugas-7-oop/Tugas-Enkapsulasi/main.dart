import 'lingkaran.dart';

void main(List<String> args) {
  Lingkaran _lingkran;

  double luaslingkrang;
  _lingkran = new Lingkaran();
  _lingkran.setJari1(4);
  _lingkran.setjari2(4);

  luaslingkrang = _lingkran.hitungluas();
  print(luaslingkrang);
}
