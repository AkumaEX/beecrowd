let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let positive = 0;
for (let i = 0; i < 6; i++)
    parseFloat(lines[i]) > 0 && positive++;
console.log(`${positive} valores positivos`);
