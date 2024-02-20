let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let total = 0;
let n = parseInt(lines[0]);
for (let i = 1; i <= n; i++) {
    let [l, c] = lines[i].split(' ').map(Number);
    total += l > c ? c : 0;
}
console.log(total);
