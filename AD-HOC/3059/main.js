function totalPairs(n, i, f, vector) {
    let total = 0;
    for (let p = 0; p < n - 1; p++) {
        for (let q = p + 1; q < n; q++) {
            let pair = vector[p] + vector[q];
            total += i <= pair && pair <= f;
        }
    }
    return total;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [n, i, f] = lines.shift().split(' ').map(Number);
let vector = lines.shift().split(' ').map(Number);
console.log(totalPairs(n, i, f, vector));
