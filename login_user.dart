class User {
  final String userName;
  final String password;

  User(this.userName, this.password);
}

// Simulierte Datenbank zum füllen
Map<String, User> profile = {};

void registerUser(String username, String password) {
  if (profile.containsKey(username)) {
    print('Benutzername bereits vergeben.');
    return;
  }

  profile[username] = User(username, password);
  print('Benutzer erfolgreich registriert.');
}

bool loginUser(String username, String password) {
  User? user = profile[username];

  if (user != null && user.password == password) {
    print('Anmeldung erfolgreich!');
    // Hier würde man zum Hauptmenü wechseln (in einer Konsolenanwendung)
    // ... zum Beispiel:
    print('Was geht $username! :');
    return true;
  } else {
    print('Ungültige Anmeldedaten.');
    return false;
  }
}

/*void main() {
  // Beispielhafte Nutzung
  registerUser('maxmustermann', 'geheim123');
  loginUser(
      'maxmustermann', 'geheim121'); // Sollte "Anmeldung erfolgreich!" ausgeben
}*/
