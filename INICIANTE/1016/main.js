let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let delta = lines[0];
console.log(`${delta * 2} minutos`);
