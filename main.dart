import 'dart:io';
import 'dart:core';
import 'bot.dart';
import 'login_user.dart';

void main() {
// login User zum Anlegen eines Profils
//
//Bot interaktion
  print("Bitte gib deinen Namen ein und dein Password : ) ");
  String userInpOne = stdin.readLineSync()!;
  String userInpTwo = stdin.readLineSync()!;

  registerUser(userInpOne, userInpTwo);
  loginUser(userInpOne, userInpTwo);
  bool isProgrammRunning = true;

  while (isProgrammRunning) {
    print("Was geht? ; ) (B)eenden... (C)hat... (P)rofil ....  ");
    // warten auf input
    String userChoiceIn = stdin.readLineSync()!;

    switch (userChoiceIn) {
      case "b" || "B":
        isProgrammRunning = false;

      case "c" || "C":
        // Wird zum Chat mit dem Bot geleitet

        print('Auf gehts zum Bot:.');
        sleep(Duration(seconds: 1));
        bot(userChoiceIn); // Botti kan Fragen beantworten, wie es iuhm geht, wie das wetter ist. Fragt ihn doch mal ob er dumm ist ^^
      case "p" || "P":
        print("dann wollen wir mal! Auf gehts zu deinem Profil");
        sleep(Duration(seconds: 1));
        print("Name : $profile[]");
    }
  }
}
