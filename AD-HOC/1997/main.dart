import 'dart:io';

int minMoves(String s, String t) {
  int moves = 0;
  bool previousEquals = true;
  for (int i = 0; i < s.length; i++) {
    bool nowEquals = s[i] == t[i];
    if (previousEquals && !nowEquals) moves++;
    previousEquals = nowEquals;
  }
  return moves;
}

void main() {
  var [s, t] = stdin.readLineSync()!.split(' ');
  while (s != '*') {
    print(minMoves(s, t));
    [s, t] = stdin.readLineSync()!.split(' ');
  }
}
