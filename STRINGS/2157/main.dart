import 'dart:io';

String mirroredSequence(int b, int e) {
  String sequence = '';
  for (int i = b; i <= e; i++) {
    sequence += i.toString();
  }
  for (int i = sequence.length - 1; i >= 0; i--) {
    sequence += sequence[i];
  }
  return sequence;
}

void main() {
  int c = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < c; times++) {
    var [b, e] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print(mirroredSequence(b, e));
  }
}
