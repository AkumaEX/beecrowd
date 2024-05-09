import 'dart:io';

int score(int n, List<int> v) {
  int longest = 0;
  int sequence = 1;
  for (int i = 0; i < n - 1; i++) {
    if (v[i] == v[i + 1]) {
      sequence++;
      if (sequence > longest) longest = sequence;
    } else {
      sequence = 1;
    }
  }
  return longest;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> v = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(score(n, v));
}
