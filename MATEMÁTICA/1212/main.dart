import 'dart:io';

int totalCarries(int a, int b) {
  int carry = 0, carries = 0;
  while (a > 0 || b > 0) {
    carry = (carry + a % 10 + b % 10) ~/ 10;
    carries += carry;
    a ~/= 10;
    b ~/= 10;
  }
  return carries;
}

void formattedPrint(int carries) {
  if (carries > 0)
    print('$carries carry operation${carries > 1 ? 's' : ''}.');
  else
    print('No carry operation.');
}

void main() {
  var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (a > 0 || b > 0) {
    int carries = totalCarries(a, b);
    formattedPrint(carries);
    [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
