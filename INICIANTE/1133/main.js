let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let x = parseInt(lines.shift());
let y = parseInt(lines.shift());
if (x > y) [x, y] = [y, x];
for (let n = x + 1; n < y; n++)
    if (n % 5 == 2 || n % 5 == 3)
        console.log(n);
