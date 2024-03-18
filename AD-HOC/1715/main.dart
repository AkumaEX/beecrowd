import 'dart:io';

int scoredAllMatches(List<int> x) {
  for (int goals in x) if (goals == 0) return 0;
  return 1;
}

void main() {
  int players = 0;
  int n = int.parse(stdin.readLineSync()!.split(' ').first);
  for (int player = 0; player < n; player++) {
    List<int> x = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    players += scoredAllMatches(x);
  }
  print(players);
}
