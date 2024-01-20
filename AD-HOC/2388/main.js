let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let distance = 0;
let n = parseInt(lines[0]);
for (let i = 1; i <= n; i++) {
    let [t, v] = lines[i].split(' ').map(Number);
    distance += t * v;
}
console.log(distance);
