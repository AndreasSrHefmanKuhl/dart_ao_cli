import 'dart:io';
import 'dart:core';
import 'bot.dart';
import 'login_user.dart';

void main() {
// login User zum Anlegen eines Profils
// Bot interaktion
// ...

// Wie lang läuft Programm?
  bool isProgrammRunning = true;

  while (isProgrammRunning) {
    print("Was geht? ; ) (B)eenden... (C)hat... (L)ogin ....  ");
    // warten auf input
    String userChoiceIn = stdin.readLineSync()!;

    switch (userChoiceIn) {
      case "b" || "B":
        isProgrammRunning = false;

      case "c" || "C":
        // Wird zum Chat mit dem Bot geleitet

        print('Auf gehts zum Bot:.');
        sleep(Duration(seconds: 1));
        bot(userChoiceIn);

      case "l" || "L":
        stdout.write("Benutzername bitte :.... : )  ");
        stdin.readLineSync();
        stdout.write(" und des Passwörtle : ) ? : .... ");
        stdin.readLineSync();
    }
  }
}
