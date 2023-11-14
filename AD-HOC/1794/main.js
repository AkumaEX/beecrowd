let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let n = parseInt(lines[0]);
let [la, lb] = lines[1].split(' ').map(Number);
let [sa, sb] = lines[2].split(' ').map(Number);

isPossible = la <= n && n <= lb && sa <= n && n <= sb;
console.log(isPossible ? 'possivel' : 'impossivel');
