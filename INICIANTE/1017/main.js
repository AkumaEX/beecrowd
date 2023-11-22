let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let t = parseFloat(lines[0]);
let v = parseFloat(lines[1]);
let consumption = t * v / 12;
console.log(consumption.toFixed(3));