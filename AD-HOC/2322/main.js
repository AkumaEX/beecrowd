function missing(n, pieces) {
    for (let i = 0; i < n - 1; i++)
        if (pieces[i] != i + 1) return i + 1;
    return n;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
let pieces = lines.shift().split(' ').map(Number).sort((a, b) => a - b);
console.log(missing(n, pieces));
