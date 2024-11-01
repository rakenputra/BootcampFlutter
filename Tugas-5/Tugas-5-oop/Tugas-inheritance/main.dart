import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(){
  armortitan armortitan1 = armortitan(4);
  attacktitan attacktitan1 = attacktitan(2);
  beasttitan beasttitan1 = beasttitan(3);
  human human1 = human(1);

  print('Armor titan powerpoint : ${armortitan1.powerpoint}');
  print('Armor titan : ${armortitan1.terjang()}');

  print('Attack titan powerpoint : ${attacktitan1.powerpoint}');
  print('Attack titan : ${attacktitan1.punch()}');

  print('Beast titan powerpoint : ${beasttitan1.powerpoint}');
  print('Armor titan : ${beasttitan1.lempar()}');

  print('Human powerpoint : ${human1.powerpoint}');
  print('Armor titan : ${human1.killalltitan()}');
}