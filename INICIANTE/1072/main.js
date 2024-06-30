let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let inInterval = 0;
let n = parseInt(lines.shift());
for (let times = 0; times < n; times++) {
    let x = parseInt(lines.shift());
    if (0 <= x && x <= 20) inInterval++;
}
console.log(`${inInterval} in`);
console.log(`${n - inInterval} out`);
