let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let a = parseInt(lines.shift());
let n = parseInt(lines.shift());
let quantity = 0;
while (n--) {
    let f = parseInt(lines.shift());
    quantity += a * f >= 40000000;
}
console.log(quantity);
