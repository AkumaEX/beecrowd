let [a, b] = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n').map(Number);
let media = (a * 3.5 + b * 7.5) / 11;
console.log(`MEDIA = ${media.toFixed(5)}`);
