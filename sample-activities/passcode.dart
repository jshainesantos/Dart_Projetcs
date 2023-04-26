import 'dart:io';

void main() {
  String passcode = "1234";
  int attempts = 3;

  while (attempts > 0) {
      print("Enter passcode: ");
      String userInput = stdin.readLineSync();
      if (userInput == passcode) {
          print("Access granted.");
          break;
      } else {
          print("Access denied.");
          attempts -= 1;
      }
  }

  if (attempts == 0) {
      print("ACCOUNT LOCKED.");
  }
}