import 'dart:io';

List<List<int>> getCards(List<int> deck) {
  List<int> discarded = [];
  while (deck.length > 1) {
    discarded.add(deck.removeAt(0));
    deck.add(deck.removeAt(0));
  }
  return [discarded, deck];
}

void printFormatted(List discarded, List remaining) {
  print('Discarded cards: ${discarded.join(', ')}');
  print('Remaining card: ${remaining.first}');
}

void main() {
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) > 0) {
    List<int> deck = List<int>.generate(n, (i) => i + 1);
    var [discarded, remaining] = getCards(deck);
    printFormatted(discarded, remaining);
  }
}
