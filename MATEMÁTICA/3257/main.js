function days(n, t) {
    t.sort((a, b) => b - a);
    for (let i = 0; i < n; i++) t[i] += i + 2;
    return Math.max(...t);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
let t = lines.shift().split(' ').map(Number);
console.log(days(n, t));
