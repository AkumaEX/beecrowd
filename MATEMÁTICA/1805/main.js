function sumBetween(a, b) {
    return (a + b) * (b - a + 1) / 2;
}

let [a, b] = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split(' ').map(Number);
console.log(sumBetween(a, b));
