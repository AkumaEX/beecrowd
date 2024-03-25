function isTriangle(a, b, c) {
    return a != b + c && b != a + c && c != a + b;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let [a, b, c] = lines[0].split(' ').map(Number);
if (isTriangle(a, b, c))
    console.log(`Perimetro = ${(a + b + c).toFixed(1)}`);
else
    console.log(`Area = ${((a + b) * c / 2).toFixed(1)}`);
