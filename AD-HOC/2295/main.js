let [a, g, ra, rg] = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split(' ').map(Number);
console.log(ra / a > rg / g ? 'A' : 'G');
