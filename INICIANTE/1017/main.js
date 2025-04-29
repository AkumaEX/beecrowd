let [v, t] = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n').map(Number);
console.log((t * v / 12).toFixed(3));
