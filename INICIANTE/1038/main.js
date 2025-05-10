let prices = [0.0, 4.0, 4.5, 5.0, 2.0, 1.5];
let [code, quantity] = require('fs').readFileSync('/dev/stdin', 'utf-8').split(' ').map(Number);
console.log(`Total: R$ ${(prices[code] * quantity).toFixed(2)}`);
