import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  ArmorTitan armorTitan = ArmorTitan();
  AttackTitan attackTitan = AttackTitan();
  BeastTitan beastTitan = BeastTitan();
  Human human = Human();

  armorTitan.powerPoint = 4;
  attackTitan.powerPoint = 8;
  beastTitan.powerPoint = 3;
  human.powerPoint = 6;

  print("ArmorTitan PowerPoint: ${armorTitan.powerPoint}");
  print("AttackTitan PowerPoint: ${attackTitan.powerPoint}");
  print("BeastTitan PowerPoint: ${beastTitan.powerPoint}");
  print("Human PowerPoint: ${human.powerPoint}");

  print(armorTitan.terjang());
  print(attackTitan.punch());
  print(beastTitan.lempar());
  print(human.killAllTitan());
}
