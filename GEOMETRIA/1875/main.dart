import 'dart:core';
import 'dart:io';

Map<String, int> getScores(int p) {
  const Map<String, Map<String, int>> points = {
    'R': {'B': 1, 'G': 2},
    'G': {'R': 1, 'B': 2},
    'B': {'G': 1, 'R': 2}
  };
  Map<String, int> scores = {'R': 0, 'G': 0, 'B': 0};
  for (int times = 0; times < p; times++) {
    var [m, s] = stdin.readLineSync()!.split(' ');
    scores[m] = scores[m]! + points[m]![s]!;
  }
  return scores;
}

String getWinner(Map<String, int> scores) {
  if (scores['R']! > scores['G']! && scores['R']! > scores['B']!) {
    return 'red';
  } else if (scores['G']! > scores['R']! && scores['G']! > scores['B']!) {
    return 'green';
  } else if (scores['B']! > scores['R']! && scores['B']! > scores['G']!) {
    return 'blue';
  } else if (scores['R']! == scores['G']! && scores['R']! == scores['B']!) {
    return 'trempate';
  }
  return 'empate';
}

void main() {
  int c = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < c; times++) {
    int p = int.parse(stdin.readLineSync()!);
    Map<String, int> scores = getScores(p);
    print(getWinner(scores));
  }
}
