let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');

let total = 0;
for (let i = 0; i < 2; i++) {
    [code, quantity, value] = lines[i].split(' ').map(Number);
    total += quantity * value;
}
console.log(`VALOR A PAGAR: R$ ${total.toFixed(2)}`);
