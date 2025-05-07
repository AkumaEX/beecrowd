let [a, b, c] = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n').map(Number);
let media = (a * 2 + b * 3 + c * 5) / 10;
console.log(`MEDIA = ${media.toFixed(1)}`);
