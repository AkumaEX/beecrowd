import 'dart:io';

int getMove(String instruction, List<int> lookup) {
  if (instruction == 'LEFT') return -1;
  if (instruction == 'RIGHT') return 1;
  int i = int.parse(instruction.split(' ').last) - 1;
  return lookup[i];
}

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int tests = 0; tests < t; tests++) {
    int p = 0;
    List<int> lookup = [];
    int n = int.parse(stdin.readLineSync()!);
    for (int instructions = 0; instructions < n; instructions++) {
      String instruction = stdin.readLineSync()!.trim();
      int move = getMove(instruction, lookup);
      p += move;
      lookup.add(move);
    }
    print(p);
  }
}
