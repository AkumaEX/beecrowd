let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let [x1, y1] = lines[0].split(' ').map(Number);
let [x2, y2] = lines[1].split(' ').map(Number);

let distance = Math.sqrt(Math.pow((x2 - x1), 2) + Math.pow((y2 - y1), 2));
console.log(`${distance.toFixed(4)}`);
