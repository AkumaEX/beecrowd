import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  var [la, lb] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [sa, sb] = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  bool isPossible = la <= n && n <= lb && sa <= n && n <= sb;
  print(isPossible ? 'possivel' : 'impossivel');
}
