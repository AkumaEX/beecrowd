import 'dart:io';

Iterable<int> total(int i, int n) {
  Map<String, int> players = {'D': i, 'E': i, 'F': i};
  while (n-- > 0) {
    List<String> transaction = stdin.readLineSync()!.split(' ');
    if (transaction[0] == 'C')
      players[transaction[1]] = players[transaction[1]]! - int.parse(transaction[2]);
    else if (transaction[0] == 'V')
      players[transaction[1]] = players[transaction[1]]! + int.parse(transaction[2]);
    else {
      players[transaction[1]] = players[transaction[1]]! + int.parse(transaction[3]);
      players[transaction[2]] = players[transaction[2]]! - int.parse(transaction[3]);
    }
  }
  return players.values;
}

void main() {
  var [i, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(total(i, n).join(' '));
}
