import 'dart:io';

class Animal {
  String _name = "";
  String _species = "";
  String _sound = "";

  Animal(this._name, this._species, this._sound);

  String get name => _name;
  String get species => _species;
  String get sound => _sound;
}

class Dog extends Animal {
  Dog(String name, String species, String sound) : super(name, species, sound);
}

class Cat extends Animal {
  Cat(String name, String species, String sound) : super(name, species, sound);
}

class Bird extends Animal {
  Bird(String name, String species, String sound) : super(name, species, sound);
}

void main() {
  stdout.write("Choose an animal (dog/cat/bird): ");
  String choice = stdin.readLineSync().toLowerCase();

  Animal animal;
  if (choice == "dog") {
    animal = Dog("dog name", "dog specie", "dog sound");
  } else if (choice == "cat") {
    animal = Cat("cat name", "cat specie", "cat sound");
  } else if (choice == "bird") {
    animal = Bird("bird name", "bird specie", "bird sound");
  } else {
    print("Invalid choice.");
    return;
  }

  print("Name: ${animal.name}, Species: ${animal.species}, Sound: ${animal.sound}");
}
