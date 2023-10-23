import 'dart:collection';
import 'dart:io';

List<ListQueue<int>> getCards(ListQueue<int> deck) {
  ListQueue<int> discarded = ListQueue<int>();
  while (deck.length > 1) {
    discarded.addLast(deck.removeFirst());
    deck.addLast(deck.removeFirst());
  }
  return [discarded, deck];
}

void printFormatted(ListQueue discarded, ListQueue remaining) {
  print('Discarded cards: ${discarded.join(', ')}');
  print('Remaining card: ${remaining.first}');
}

void main() {
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) > 0) {
    ListQueue<int> deck = ListQueue<int>()..addAll(List.generate(n, (i) => i + 1));
    var [discarded, remaining] = getCards(deck);
    printFormatted(discarded, remaining);
  }
}
