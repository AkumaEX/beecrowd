import 'dart:io';

int getWinner() {
  int participant = 1;
  for (int ticket in stdin.readLineSync()!.split(' ').map(int.parse)) {
    if (participant == ticket) break;
    participant++;
  }
  return participant;
}

void printFormatted(int test, int winner) {
  print('Teste $test\n$winner\n');
}

void main() {
  int n, test = 1;
  while ((n = int.parse(stdin.readLineSync()!)) > 0) {
    int winner = getWinner();
    printFormatted(test, winner);
    test++;
  }
}
