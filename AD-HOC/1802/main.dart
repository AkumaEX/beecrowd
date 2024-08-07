import 'dart:io';

List<int> getPrices(List<int> vP, List<int> vM, List<int> vF, List<int> vQ, List<int> vB) {
  List<int> prices = [];
  for (int p in vP) {
    for (int m in vM) {
      for (int f in vF) {
        for (int q in vQ) {
          for (int b in vB) {
            prices.add(p + m + f + q + b);
          }
        }
      }
    }
  }
  return prices;
}

int sumMostExpensive(int k, List<int> prices) {
  prices.sort((a, b) => b - a);
  return [...prices..sort((a, b) => b - a)].sublist(0, k).fold(0, (a, b) => a + b);
}

void main() {
  var [_, ...vP] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [_, ...vM] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [_, ...vF] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [_, ...vQ] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [_, ...vB] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int k = int.parse(stdin.readLineSync()!);
  List<int> prices = getPrices(vP, vM, vF, vQ, vB);
  print(sumMostExpensive(k, prices));
}
