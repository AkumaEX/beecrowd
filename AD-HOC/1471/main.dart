import 'dart:io';

Set<int> notReturned(int n) {
  Set<int> allDivers = List<int>.generate(n, (int i) => i + 1).toSet();
  Set<int> returned = stdin.readLineSync()!.split(' ').map(int.parse).toSet();
  return allDivers.difference(returned);
}

void formattedPrint(Set<int> divers) {
  for (int diver in divers) stdout.write('$diver ');
  print('');
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    var [n, r] = line!.split(' ').map(int.parse).toList();
    if (n > r) {
      Set<int> divers = notReturned(n);
      formattedPrint(divers);
    } else {
      stdin.readLineSync();
      print('*');
    }
  }
}
