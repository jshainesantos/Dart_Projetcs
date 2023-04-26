import 'dart:io';

class Shape {
  String _color = "";
  String _area = "";

  Shape(this._color, this._area);

  String get color => _color;
  String get area => _area;
}

class Circle extends Shape {
  Circle(String color, String area) : super(color, area);
}

class Rectangle extends Shape {
  Rectangle(String color, String area) : super(color, area);
}

void main() {
  Circle c = Circle("color Pink", "Area 51");
  Rectangle r = Rectangle("color Blue", "Area 90");

  stdout.write("CHOOSE A SHAPE: [C] for Circle [R] for Rectangle: ");
  String choice = stdin.readLineSync().toLowerCase();

  Shape shape;
  if (choice == "c") {
    print("Shape: Circle, Color: ${c._color}, Area: ${c.area}");
  } else if (choice == "r") {
    print("Shape: Rectangle, Color: ${r._color}, Area: ${r.area}");
  } else {
    print("INVALID CHOICE");
  }
}
