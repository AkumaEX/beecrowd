let [x, y] = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n').map(Number);
console.log(`${(x / y).toFixed(3)} km/l`);
