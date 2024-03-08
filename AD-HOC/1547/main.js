function winner(s, values) {
    let closest = [...values].sort((a, b) => Math.abs(s - a) - Math.abs(s - b))[0];
    return values.indexOf(closest) + 1;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.trim().split('\n');
let n = parseInt(lines.shift());
for (let times = 0; times < n; times++) {
    let s = parseInt(lines.shift().split(' ')[1]);
    let values = lines.shift().split(' ').map(Number);
    console.log(winner(s, values));
}
