import 'dart:io';

String firstCivilization(int n) {
  Map<int, String> messages = {};
  for (int times = 0; times < n; times++) {
    var [civilization, received, traveled] = stdin.readLineSync()!.split(' ');
    messages[int.parse(received) - int.parse(traveled)] = civilization;
  }
  List<int> years = messages.keys.toList()..sort();
  return messages[years.first]!;
}

void main() {
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) > 0) {
    print(firstCivilization(n));
  }
}
