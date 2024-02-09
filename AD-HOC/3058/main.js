let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let prices = [];
let n = parseInt(lines[0]);
for (let i = 1; i <= n; i++) {
    var [p, g] = lines[i].split(' ').map(Number);
    prices.push(1000 * p / g);
}
prices.sort((a, b) => a - b);
console.log(`${prices[0].toFixed(2)}`);
