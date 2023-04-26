/* Given the figure, create a dart code using constructor for each dog breed (as objects). */

import 'dart:io';

class Dog {
  String breed = "";
  String size = "";
  int age = 0;
  String color = "";

  Dog(this.breed, this.size, this.age, this.color);

  Dog.neapolitan() {
    breed = "Neapolitan Mastiff";
    size = "Large";
    age = 5;
    color = "Black";
  }

  Dog.maltese() {
    breed = "Maltese";
    size = "Small";
    age = 2;
    color = "White";
  }

  Dog.chowchow() {
    breed = "Chow";
    size = "Medium";
    age = 3;
    color = "Brown";
  }
}

void main() {
  Dog d1 = Dog.neapolitan();
  Dog d2 = Dog.maltese();
  Dog d3 = Dog.chowchow();

  stdout.write("Dog Breed [Neapolitan, Maltese, Chowchow]: ");
  String type = stdin.readLineSync().toLowerCase();

  if (type == "neapolitan") {
    print("Breed: ${d1.breed}");
    print("Size: ${d1.size}");
    print("Age: ${d1.age}");
    print("Color: ${d1.color}");
  }
  else if (type == "maltese") {
    print("Breed: ${d2.breed}");
    print("Size: ${d2.size}");
    print("Age: ${d2.age}");
    print("Color: ${d2.color}");
  }
  else {
    print("Breed: ${d3.breed}");
    print("Size: ${d3.size}");
    print("Age: ${d3.age}");
    print("Color: ${d3.color}");
  }
}
