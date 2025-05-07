let [a, b, c] = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split(' ').map(Number);
console.log(`TRIANGULO: ${((a * c) / 2).toFixed(3)}`);
console.log(`CIRCULO: ${(3.14159 * c * c).toFixed(3)}`);
console.log(`TRAPEZIO: ${((a + b) * c / 2).toFixed(3)}`);
console.log(`QUADRADO: ${(b * b).toFixed(3)}`);
console.log(`RETANGULO: ${(a * b).toFixed(3)}`);
