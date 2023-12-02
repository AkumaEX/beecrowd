function build(tree) {
    lines[i++];
    let [root, ...nodes] = lines[i++].split(' ').map(Number);
    tree[root] = [null, null];
    for (let node of nodes) {
        tree[node] = [null, null];
    }
    for (let node of nodes) {
        _insert(node, tree, root);
    }
    return root;
}

function _insert(node, tree, parent) {
    let edge = node < parent ? 0 : 1;
    let child = tree[parent][edge];
    if (child === null) {
        tree[parent][edge] = node;
    } else {
        _insert(node, tree, child);
    }
}

function printFormatted(i, tree, root) {
    console.log(`Case ${i + 1}:`);
    let queue = [root];
    while (true) {
        let node = queue.shift();
        for (let child of tree[node]) {
            if (child !== null) {
                queue.push(child);
            }
        }
        if (queue.length === 0) {
            return process.stdout.write(`${node}\n\n`);
        }
        process.stdout.write(`${node} `);
    }
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let c = parseInt(lines[i++]);
for (let i = 0; i < c; i++) {
    let tree = {};
    let root = build(tree);
    printFormatted(i, tree, root);
}
