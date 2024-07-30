import 'dart:io';
import 'dart:math';

List<int> getTotal(int j, List<int> scores) {
  List<int> total = List.filled(j, 0);
  for (var (i, score) in scores.indexed) {
    total[i % j] += score;
  }
  return total;
}

int getWinner(List<int> total) {
  int maxScore = total.reduce(max);
  return total.lastIndexOf(maxScore) + 1;
}

void main() {
  int j = int.parse(stdin.readLineSync()!.split(' ').first);
  List<int> scores = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  List<int> total = getTotal(j, scores);
  print(getWinner(total));
}
