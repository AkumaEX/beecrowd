import 'dart:io';

Map<String, Map<String, String>> fromB = {
  '*.': {'..': '1', '*.': '2', '.*': '5', '**': '8'},
  '**': {'..': '3', '*.': '6', '.*': '4', '**': '7'},
  '.*': {'*.': '9', '**': '0'}
};

Map<String, Map<int, String>> toB = {
  '1': {0: '*.', 1: '..', 2: '..'},
  '2': {0: '*.', 1: '*.', 2: '..'},
  '3': {0: '**', 1: '..', 2: '..'},
  '4': {0: '**', 1: '.*', 2: '..'},
  '5': {0: '*.', 1: '.*', 2: '..'},
  '6': {0: '**', 1: '*.', 2: '..'},
  '7': {0: '**', 1: '**', 2: '..'},
  '8': {0: '*.', 1: '**', 2: '..'},
  '9': {0: '.*', 1: '*.', 2: '..'},
  '0': {0: '.*', 1: '**', 2: '..'}
};

void translateFromB(int d) {
  List<List<String>> sentence = [for (int i = 0; i < 3; i++) stdin.readLineSync()!.split(' ')];
  for (int cell = 0; cell < d; cell++) {
    String topCell = sentence[0][cell];
    String midCell = sentence[1][cell];
    String separator = cell < d - 1 ? '' : '\n';
    stdout.write(fromB[topCell]![midCell]! + separator);
  }
}

void translateToB(int d) {
  String sentence = stdin.readLineSync()!;
  for (int line = 0; line < 3; line++) {
    for (int digit = 0; digit < d; digit++) {
      String num = sentence[digit];
      String separator = digit < d - 1 ? ' ' : '\n';
      stdout.write(toB[num]![line]! + separator);
    }
  }
}

void main() {
  int d;
  while ((d = int.parse(stdin.readLineSync()!)) != 0) {
    stdin.readLineSync()!.trim() == 'B' ? translateFromB(d) : translateToB(d);
  }
}
