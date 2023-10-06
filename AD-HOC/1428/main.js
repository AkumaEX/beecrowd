let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let t = lines[0];
for (let i = 1; i <= t; i++) {
    let [n, m] = lines[i].split(' ').map(Number);
    let total = parseInt(n / 3) * parseInt(m / 3);
    console.log(total);
}
