function score(n) {
    n.sort((a, b) => a - b);
    return n[1] + n[2] + n[3];
}

let n = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split(' ').map(Number);
console.log(score(n).toFixed(1));
