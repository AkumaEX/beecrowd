let [a, b, c] = require('fs').readFileSync('/dev/stdin', 'utf-8').split(' ').map(Number);
let isTriangle = a + b > c && a + c > b && b + c > a;
if (isTriangle)
    console.log(`Perimetro = ${(a + b + c).toFixed(1)}`);
else
    console.log(`Area = ${((a + b) * c / 2).toFixed(1)}`);
