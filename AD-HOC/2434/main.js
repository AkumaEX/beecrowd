let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [n, s] = lines[0].split(' ').map(Number);
let min = s;
for (let i = 1; i <= n; i++) {
    s += parseInt(lines[i]);
    if (s < min) {
        min = s;
    }
}
console.log(min);
