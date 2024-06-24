import 'dart:io';

List<int> getBooks(int n) {
  List<int> books = [];
  while (n-- > 0) books.add(int.parse(stdin.readLineSync()!));
  return books..sort();
}

void formattedPrint(List<int> books) {
  for (int book in books) print(book.toString().padLeft(4, '0'));
}

void main(List<String> args) {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    int n = int.parse(line!);
    List<int> books = getBooks(n);
    formattedPrint(books);
  }
}
