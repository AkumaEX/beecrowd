function total(code, qty) {
    let prices = [4.0, 4.5, 5.0, 2.0, 1.5];
    return prices[code - 1] * qty;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [code, qty] = lines[0].split(' ').map(Number);
console.log(`Total: R$ ${total(code, qty).toFixed(2)}`);
