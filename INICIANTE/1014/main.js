let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let x = parseInt(lines[0]);
let y = parseFloat(lines[1]);
let consumption = x / y;
console.log(`${consumption.toFixed(3)} km/l`);
