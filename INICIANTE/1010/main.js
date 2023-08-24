let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let total = 0;
lines.forEach(line => {
    if (line) {
        [code, quantity, value] = line.split(' ').map(Number);
        total += quantity * value;
    }
});
console.log(`VALOR A PAGAR: R$ ${total.toFixed(2)}`);
