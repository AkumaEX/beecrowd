import 'dart:io';

Set<String> getItems() {
  return stdin.readLineSync()!.split(' ').toSet();
}

void formattedPrint(Set<String> items) {
  return print((items.toList()..sort()).join(' '));
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    Set<String> items = getItems();
    formattedPrint(items);
  }
}
