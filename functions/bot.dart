import 'dart:io';

bot(String userInp) {
  print('     ****     ****  ');
  print('     (  )     (  )  ');

  print('        /    ');
  print('       /___    ');

  print('        _____/   ');

  print("Hi! Ich bin Botti.Ich bin zwar nicht der klügste aber ich geb alles!");
  List<String> health = [
    "wie geht es dir?",
    "was geht?",
    "wie gehts dir?",
    "Wie geht es dir?",
    "Was geht?",
    "Wie gehts dir?"
  ];

  List<String> weather = [
    "Wie ist das Wetter heute?",
    "Was sagst du zum Wetter?",
    "Wetter?",
    "wie ist das Wetter heute?",
    "was sagst du zum Wetter?",
    "wetter?",
  ];

  List<String> dumb = [
    "Bist du dumm?",
    "Bist wohl nicht der hellste?",
    "Hi Forest",
    "Was stimmt nicht mit dir?",
    "bist du dumm?",
    "bist wohl nicht der hellste?",
    "hi Forest",
    "was stimmt nicht mit dir?"
  ];

  List<String> actives = [
    "Hast du Hobbies?",
    "Was machst du am liebsten?",
    "Was trebst so in deiner Freizeit?",
  ];
  List<String> sense = [
    "Was ist der Sinn des Lebens?",
    "Kennst du die Antwort auf alles Fragen?",
  ];

  while (true) {
    String userInp = stdin.readLineSync()!.toString();

    if (userInp.contains("beende") || userInp.contains("Beende")) {
      print("Bis zum nächsten Mal!");
      break;
    }

    // weitere themen können sein... wer hat dich gebaut? ,was machst du?, Hobby?,
    //  erzähl mir einen witz. Was ist der Sinn des Lebens?(42)
    // implementierung von verschiedenen launen durch if else funktionsblock in klasse auslagern und durch zusätzliche if reaktion simulieren .

    else if (health.any((element) => userInp.contains(element))) {
      print("Mir geht es gut, danke! Und dir?");
    } else if (weather.any((element) => userInp.contains(element))) {
      print("Das Wetter ist heute schön, oder?");
    } else if (dumb.any((element) => userInp.contains(element))) {
      print("Dumm ist der, der dummes tut ; )... mein lieber Freund! ");
    } else if (actives.any((element) => userInp.contains(element))) {
      print(
          "Ich stricke am liebsten in meiner Freizeit! Die Ruhe und die Ausgeglichenheit dabei");
    } else if (sense.any((element) => userInp.contains(element))) {
      print("42!");
    } else {
      print("Das ist interessant. Kannst du mir mehr darüber erzählen?");
    }
  }
}
