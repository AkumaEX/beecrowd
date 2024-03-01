class Node {
    constructor(data) {
        this.data = data;
        this.left;
        this.right;
    }
}

function insert(data, node) {
    if (node) {
        if (data < node.data) {
            node.left = insert(data, node.left);
        } else {
            node.right = insert(data, node.right);
        }
        return node;
    }
    return new Node(data);
}

function printSearch(data, tree) {
    console.log(_search(data, tree) ? `${data} existe` : `${data} nao existe`);
}

function _search(data, node) {
    if (node) {
        return data == node.data || _search(data, node.left) || _search(data, node.right);
    }
    return false;
}

function printTree(expression, tree) {
    let result = [];
    _expressionTree(expression, tree, result);
    console.log(result.join(' '));
}

function _expressionTree(expression, node, result) {
    if (node) {
        if (expression == 'PREFIXA') {
            result.push(node.data);
        }
        _expressionTree(expression, node.left, result);
        if (expression == 'INFIXA') {
            result.push(node.data);
        }
        _expressionTree(expression, node.right, result);
        if (expression == 'POSFIXA') {
            result.push(node.data);
        }
    }
}


let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.trim().split('\n');

let data = lines.shift().split(' ')[1];
let tree = new Node(data);
let line;
while (line = lines.shift()) {
    if (line.includes(' ')) {
        let [command, data] = line.trim().split(' ');
        command == 'I' ? insert(data, tree) : printSearch(data, tree);
    } else {
        let expression = line.trim();
        printTree(expression, tree);
    }
}
