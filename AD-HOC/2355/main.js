let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n').map(Number);
while (n = lines.shift())
    console.log(`Brasil ${Math.floor(n / 90)} x Alemanha ${Math.ceil(7 * n / 90)}`);
