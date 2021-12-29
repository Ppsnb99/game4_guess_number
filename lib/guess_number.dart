// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';
import 'game.dart';

void main() {
  while (true) {
    stdout.write('Enter a maximum number to random: ');
    var input1 = stdin.readLineSync();
    var num = int.tryParse(input1!);
    if (num == null) {
      continue;
    }
    var game = Game(maxRandom: num);
    var isCorrect = false;
    var check = false;

    print('╔════════════════════════════════════════');
    print('║            GUESS THE NUMBER            ');
    print('╟────────────────────────────────────────');

    do {
      stdout.write('║ Guess the number between 1 and $num: ');
      var input2 = stdin.readLineSync();
      var guess = int.tryParse(input2!);
      if (guess == null) {
        continue;
      }

      var result = game.doGuess(guess);
      if (result == 1) {
        print('║ ➜ $guess is TOO HIGH! ▲');
        print('╟────────────────────────────────────────');
      } else if (result == -1) {
        print('║ ➜ $guess is TOO LOW! ▼');
        print('╟────────────────────────────────────────');
      } else {
        print('║ ➜ $guess is CORRECT ❤, total guesses: ${game.guessCount}');
        print('╟────────────────────────────────────────');
        print('║                 THE END                ');
        print('╚════════════════════════════════════════');
        isCorrect = true;
      }
    } while (!isCorrect);
    while (true) {
      stdout.write('Play agian? (Y/N): ');
      var again = stdin.readLineSync();
      if (again == 'Y' || again == 'y') {
        check = false;
        break;
      } else if (again == 'N' || again == 'n') {
        check = true;
        break;
      } else {
        continue;
      }
    }
    if (check == false) {
      continue;
    } else {
      game.DisplayResult();
      break;
    }
  }
}


