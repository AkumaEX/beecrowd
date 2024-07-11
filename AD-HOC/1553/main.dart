import 'dart:io';

Iterable<int> getFrequencies(Iterable<int> p) {
  Map<int, int> frequencies = {};
  for (int question in p) {
    frequencies[question] = frequencies.containsKey(question) ? frequencies[question]! + 1 : 1;
  }
  return frequencies.values;
}

int getQuestions(Iterable<int> frequencies, int k) {
  int questions = 0;
  for (int frequency in frequencies) {
    if (frequency >= k) questions++;
  }
  return questions;
}

void main() {
  var [n, k] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (n > 0 && k > 0) {
    Iterable<int> p = stdin.readLineSync()!.split(' ').map(int.parse);
    Iterable<int> frequencies = getFrequencies(p);
    print(getQuestions(frequencies, k));
    [n, k] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
