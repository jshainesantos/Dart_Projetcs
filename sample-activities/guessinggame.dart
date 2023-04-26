import 'dart:io';

void main() {
    int magicNumber = 10;
    int guessCount = 0;

    print("Welcome to the guessing game! Please guess the magic number (0-99): ");

    while (true) {
        int playerGuess = int.parse(stdin.readLineSync());
        guessCount++;

        if (playerGuess == magicNumber) {
            print("Congratulations! You have guessed the magic number in $guessCount attempt/s.");
            break;
        } else if (playerGuess < magicNumber) {
            print("Too low! Please guess again: ");
        } else {
            print("Too high! Please guess again: ");
        }
    }
}