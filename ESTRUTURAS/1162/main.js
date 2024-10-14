function leastSwaps(l, carriages) {
    let swaps = 0;
    for (let i = 0; i < l - 1; i++) {
        for (let j = i + 1; j < l; j++) {
            swaps += carriages[i] > carriages[j];
        }
    }
    return swaps;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--) {
    let l = parseInt(lines.shift());
    let carriages = lines.shift().split(' ').map(Number);
    console.log(`Optimal train swapping takes ${leastSwaps(l, carriages)} swaps.`);
}
