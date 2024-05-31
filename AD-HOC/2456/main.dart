import 'dart:io';

String sequence(List<int> cards) {
  if (cards[0] < cards[1] && cards[1] < cards[2] && cards[2] < cards[3] && cards[3] < cards[4]) return 'C';
  if (cards[0] > cards[1] && cards[1] > cards[2] && cards[2] > cards[3] && cards[3] > cards[4]) return 'D';
  return 'N';
}

void main() {
  List<int> cards = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(sequence(cards));
}
