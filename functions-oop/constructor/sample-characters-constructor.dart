class Character {
  String _name = "";
  int _level;
  List<String> _abilities;

  Character(this._name, this._level, List<String> this._abilities);

  String get name => _name;
  int get level => _level;
  List<String> get abilities => _abilities;
}

class Warrior extends Character {
  Warrior(String name, int level)
      : super(name, level, ['Slash', 'Charge', 'Shield Bas']);
}

class Mage extends Character {
  Mage(String name, int level)
      : super(name, level, ['Pnk', 'Blue', 'Green Bas']);
}

class Archer extends Character {
  Archer(String name, int level)
      : super(name, level, ['Black', 'Orange', 'Purple Bas']);
}

void main() {
  Warrior w = Warrior('Conan', 5);
  Mage m = Mage('Carla', 9);
  Archer a = Archer('Shaine', 7);

  print('Name: ${w.name}, Level: ${w.level}, Abilities: ${w.abilities}');
  print('Name: ${m.name}, Level: ${m.level}, Abilities: ${m.abilities}');
  print('Name: ${a.name}, Level: ${a.level}, Abilities: ${a.abilities}');
}
