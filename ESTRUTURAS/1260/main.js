function getTrees() {
    let line, trees = {};
    while (line = lines[i++]) {
        let tree = line.trim();
        if (!(tree in trees)) trees[tree] = 0;
        trees[tree]++;
    }
    return trees;
}

function formattedPrint(c, trees) {
    if (c) console.log();
    let total = Object.values(trees).reduce((a, b) => a + b);
    for (let tree of Object.keys(trees).sort())
        console.log(`${tree} ${(100 * trees[tree] / total).toFixed(4)}`);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let i = 0; n = parseInt(lines[i++]);
i++;
for (let c = 0; c < n; c++) {
    formattedPrint(c, getTrees());
}
