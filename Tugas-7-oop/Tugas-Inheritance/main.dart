import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(List<String> args) {
  Amor amor = Amor();
  Attack attack = Attack();
  Beast beast = Beast();
  Human human = Human();

  amor.levelpoint = 8;
  attack.levelpoint = 1;
  beast.levelpoint = 8;
  human.levelpoint = 10;

  print("Level point Amor ${amor.levelpoint}");
  print("Level point Attcak ${attack.levelpoint}");
  print("Level point Beast ${beast.levelpoint}");
  print("Level point Human ${human.levelpoint}");

  print("Sifat dari Amor " + amor.terjang());
  print("Sifat dari Attack " + attack.punch());
  print("Sifat dari Beast " + beast.lempar());
  print("Sifat dari Human " + human.killAlltitan());
}
