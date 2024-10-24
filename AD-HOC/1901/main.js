function getForest(n) {
    let forest = [];
    while (n--) forest.push(lines.shift().split(' ').map(Number));
    return forest;
}

function numButterflies(n, forest) {
    let butterflies = new Set();
    while (n--) {
        let [x, y] = lines.shift().split(' ').map(Number);
        butterflies.add(forest[x - 1][y - 1]);
    }
    return butterflies.size;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
console.log(numButterflies(2 * n, getForest(n)));
