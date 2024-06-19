import 'dart:io';

void main(List<String> args) {
  Map<String, List<String>> wins = {
    'tesoura': ['papel', 'lagarto'],
    'papel': ['pedra', 'spock'],
    'pedra': ['lagarto', 'tesoura'],
    'lagarto': ['spock', 'papel'],
    'spock': ['tesoura', 'pedra']
  };

  int c = int.parse(stdin.readLineSync()!);
  while (c-- > 0) {
    var [rajesh, sheldon] = stdin.readLineSync()!.split(' ').toList();
    if (wins[rajesh]!.contains(sheldon))
      print('rajesh');
    else if (wins[sheldon]!.contains(rajesh))
      print('sheldon');
    else
      print('empate');
  }
}
