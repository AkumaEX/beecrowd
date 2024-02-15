import 'dart:io';

Map<String, String> getMessages(int n) {
  Map<String, String> messages = Map<String, String>();
  for (int times = 0; times < n; times++) {
    String language = stdin.readLineSync()!.trim();
    String message = stdin.readLineSync()!.trim();
    messages[language] = message;
  }
  return messages;
}

void formattedPrint(int m, Map<String, String> messages) {
  for (int times = 0; times < m; times++) {
    String name = stdin.readLineSync()!.trim();
    String language = stdin.readLineSync()!.trim();
    print(name);
    print(messages[language]);
    print('');
  }
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  Map<String, String> messages = getMessages(n);
  int m = int.parse(stdin.readLineSync()!);
  formattedPrint(m, messages);
}
