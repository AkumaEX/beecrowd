import 'dart:io';
import 'dart:collection';

bool canFix(int l) {
  Queue<List<int>> segments = new Queue();
  for (int times = 0; times < l; times++) {
    segments.add(stdin.readLineSync()!.split(' ').map(int.parse).toList());
  }
  Set connected = segments.removeFirst().toSet();
  bool hasChange = true;
  while (hasChange) {
    hasChange = false;
    for (int times = 0; times < segments.length; times++) {
      var [x, y] = segments.removeFirst();
      if (connected.contains(x) || connected.contains(y)) {
        connected.add(x);
        connected.add(y);
        hasChange = true;
      } else {
        segments.addLast([x, y]);
      }
    }
  }
  return segments.isEmpty;
}

void main() {
  int l = int.parse(stdin.readLineSync()!.split(' ')[1]);
  print(canFix(l) ? 'COMPLETO' : 'INCOMPLETO');
}
