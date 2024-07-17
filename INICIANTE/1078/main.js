let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
for (let i = 1; i < 11; i++)
    console.log(`${i} x ${n} = ${i * n}`);
