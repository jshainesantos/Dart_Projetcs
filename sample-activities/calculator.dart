import 'dart:io';

int sum(int num1, int num2) {
  return num1 + num2;
}

int difference(int num1, int num2) {
  return num1 - num2;
}

int product(int num1, int num2) {
  return num1 * num2;
}

double quotient(int num1, int num2) {
  return num1 / num2;
}

void main() {
  while (true) {
    stdout.write("Enter first number: ");
    var num1 = int.parse(stdin.readLineSync());

    stdout.write("Enter second number: ");
    var num2 = int.parse(stdin.readLineSync());

    if (num1 == 0 && num2 == 0) {
      print("Can't execute. END OF PROGRAM.");
      break;
    }

    stdout.write(
        "Select operation (1 for sum, 2 for difference, 3 for product, 4 for quotient): ");
    var operation = int.parse(stdin.readLineSync());

    if (operation == 1) {
      print("The sum of $num1 and $num2 is ${sum(num1, num2)}");
    } else if (operation == 2) {
      print("The difference of $num1 and $num2 is ${difference(num1, num2)}");
    } else if (operation == 3) {
      print("The product of $num1 and $num2 is ${product(num1, num2)}");
    } else if (operation == 4) {
      print("The quotient of $num1 and $num2 is ${quotient(num1, num2)}");
    } else {
      print("Invalid operation.");
    }
  }
}