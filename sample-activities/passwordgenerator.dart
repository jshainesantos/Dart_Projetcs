import 'dart:math';
import 'dart:io';

void main() {
  print("Choose a password strength: 1, 2, or 3\n1 = Weak\n2 = Medium\n3 = Strong\n");
  String str = stdin.readLineSync()?.trim() ?? '';
  var password = passwordGenerator(str);
  if (password == "") {
    print("Invalid option. Please choose 1, 2, or 3.");
  } else {
    print("The generated password is: $password");
  }
}

String shuffleGenerator(int len) {
  var r = Random();
  const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#\$%^&*()_-+={}[]|\\:;"<>,.?/';
  String shuffled = '';
  while (shuffled.length < len) {
    shuffled += chars[r.nextInt(chars.length)];
  }
  return shuffled;
}

String passwordGenerator(String strength) {
  switch (strength) {
    case "1":
      return shuffleGenerator(8);
    case "2":
      return shuffleGenerator(12);
    case "3":
      return shuffleGenerator(16);
    default:
      return "";
  }
}
