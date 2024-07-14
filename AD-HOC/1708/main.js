let [x, y] = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split(' ').map(Number);
console.log(Math.ceil(y / (y - x)));
