import 'dart:io';
import 'dart:math';

List<int> getScores(int p, List<List<int>> grandPrix, List<int> rule) {
  List<int> scores = List.filled(p, 0);
  for (List<int> results in grandPrix) {
    for (var (driver, position) in results.indexed) {
      if (position < rule.length) scores[driver] += rule[position];
    }
  }
  return scores;
}

List<int> getWinner(List<int> scores) {
  int maxScore = scores.reduce(max);
  List<int> winner = [];
  for (var (driver, score) in scores.indexed) {
    if (score == maxScore) winner.add(driver + 1);
  }
  return winner;
}

List<int> _readLine() {
  return stdin.readLineSync()!.split(' ').map(int.parse).toList();
}

void main() {
  var [g, p] = _readLine();
  while (g != 0 && p != 0) {
    List<List<int>> grandPrix = [];
    for (int t = 0; t < g; t++) {
      grandPrix.add(_readLine());
    }
    int s = int.parse(stdin.readLineSync()!);
    for (int t = 0; t < s; t++) {
      List<int> rule = _readLine();
      List<int> scores = getScores(p, grandPrix, rule);
      List<int> winner = getWinner(scores);
      print(winner.join(' '));
    }

    [g, p] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
