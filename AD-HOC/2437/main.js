let [xM, yM, xR, yR] = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split(' ').map(Number);
console.log(Math.abs(xM - xR) + Math.abs(yM - yR));
