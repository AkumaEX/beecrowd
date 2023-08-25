let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let R = parseFloat(lines[0]);
let volume = (4 / 3) * 3.14159 * Math.pow(R, 3);
console.log(`VOLUME = ${volume.toFixed(3)}`);