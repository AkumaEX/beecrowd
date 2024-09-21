import 'dart:io';

bool isCorrect(String expression) {
  List<String> stack = [];
  for (int i = 0; i < expression.length; i++) {
    if (expression[i] == '(') {
      stack.add(expression[i]);
    } else if (expression[i] == ')') {
      if (stack.isEmpty) return false;
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

void main() {
  String? expression;
  while ((expression = stdin.readLineSync()) != null) {
    print(isCorrect(expression!) ? 'correct' : 'incorrect');
  }
}
