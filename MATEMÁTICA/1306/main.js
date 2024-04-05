function getMinimum(r, n) {
    for (let mininum = 0; mininum < 27; mininum++) {
        if (r <= n * (1 + mininum)) return mininum;
    }
    return -1;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let [r, n] = lines.shift().split(' ').map(Number);
for (let c = 1; r && n; c++) {
    let minimum = getMinimum(r, n);
    console.log(`Case ${c}: ${minimum >= 0 ? minimum : 'impossible'}`);
    [r, n] = lines.shift().split(' ').map(Number);
}
