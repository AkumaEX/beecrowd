let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let [v, t] = lines.shift().split(' ').map(Number);
let a = lines.shift().split(' ').map(Number);
for (let i = 0; i < t; i++) {
    v += a[i];
    if (v < 0) v = 0;
    else if (v > 100) v = 100;
}
console.log(v);
