let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let x = parseInt(lines[0]);
let y = parseFloat(lines[1]);
console.log(`${(x / y).toFixed(3)} km/l`);
