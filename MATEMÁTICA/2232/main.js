let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let t = parseInt(lines[0]);
for (let i = 1; i <= t; i++) {
    let n = parseInt(lines[i]);
    let s = Math.pow(2, n) - 1;
    console.log(s);
}
