import 'dart:io';

int getLowestPrice(int b, List<int> ingredientsPrices) {
  int lowestPrice = 100 * 1000 * 1000;
  for (int cake = 0; cake < b; cake++) {
    int cakePrice = _getCakePrice(ingredientsPrices);
    if (cakePrice < lowestPrice) lowestPrice = cakePrice;
  }
  return lowestPrice;
}

int _getCakePrice(List<int> ingredientsPrices) {
  int price = 0;
  var [qi, ...recipe] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  for (int i = 0; i < qi; i++) {
    int ingredient = recipe[i * 2];
    int quantity = recipe[i * 2 + 1];
    price += ingredientsPrices[ingredient] * quantity;
  }
  return price;
}

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < t; times++) {
    var [d, _, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    List<int> ingredientsPrices = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int lowestPrice = getLowestPrice(b, ingredientsPrices);
    print(d ~/ lowestPrice);
  }
}
