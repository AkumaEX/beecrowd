function printTree(n) {
    let whitespaces = parseInt(n / 2);
    let treesize = 1;
    while (treesize <= n) {
        console.log(' '.repeat(whitespaces) + '*'.repeat(treesize));
        whitespaces--;
        treesize += 2;
    }
    whitespaces = parseInt(n / 2);
    console.log(' '.repeat(whitespaces) + '*');
    console.log(' '.repeat(--whitespaces) + '***');
    console.log();
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let line;
while (line = lines.shift()) {
    let n = parseInt(line);
    printTree(n);
}
