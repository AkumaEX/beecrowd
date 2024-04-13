function quantity(n) {
    return (n - 3) + (n - 2) * (n - 3) / 2;
}

let line = require('fs').readFileSync('/dev/stdin', 'utf-8').trim();
let n = parseInt(line);
console.log(quantity(n));