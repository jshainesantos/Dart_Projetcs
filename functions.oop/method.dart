class Calculator {
  int add(int a, int b) {
    return a + b;
  }

  int subtract(int a, int b) {
    return a - b;
  }
}

void main() {
  final calc = Calculator();

  final result1 = calc.add(3, 5);
  print("3 + 5 = $result1");

  final result2 = calc.subtract(10, 7);
  print("10 - 7 = $result2");
}
