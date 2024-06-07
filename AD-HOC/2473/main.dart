import 'dart:io';

void main() {
  Map<int, String> results = {3: 'terno', 4: 'quadra', 5: 'quina', 6: 'sena'};
  Set<int> your = stdin.readLineSync()!.split(' ').map(int.parse).toSet();
  Set<int> draw = stdin.readLineSync()!.split(' ').map(int.parse).toSet();
  int hits = your.intersection(draw).length;
  print(results[hits] ?? 'azar');
}
