import 'dart:io';

class Node {
  String data;
  Node? left;
  Node? right;
  Node(this.data);
}

Node insert(String data, Node? node) {
  if (node != null) {
    if (data.compareTo(node.data) < 0) {
      node.left = insert(data, node.left);
    } else {
      node.right = insert(data, node.right);
    }
    return node;
  }
  return Node(data);
}

void printSearch(String data, Node tree) {
  print(_search(data, tree) ? '$data existe' : '$data nao existe');
}

bool _search(String data, Node? node) {
  if (node != null) {
    return data == node.data || _search(data, node.left) || _search(data, node.right);
  }
  return false;
}

void printTree(String expression, Node tree) {
  List<String> result = [];
  _expressionTree(expression, tree, result);
  print(result.join(' '));
}

void _expressionTree(String expression, Node? node, List<String> result) {
  if (node != null) {
    if (expression == 'PREFIXA') result.add(node.data);
    _expressionTree(expression, node.left, result);
    if (expression == 'INFIXA') result.add(node.data);
    _expressionTree(expression, node.right, result);
    if (expression == 'POSFIXA') result.add(node.data);
  }
}

void main() {
  String data = stdin.readLineSync()!.split(' ')[1];
  Node tree = Node(data);
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    if (line!.contains(' ')) {
      var [command, data] = line.trim().split(' ');
      command == 'I' ? insert(data, tree) : printSearch(data, tree);
    } else {
      String expression = line.trim();
      printTree(expression, tree);
    }
  }
}
