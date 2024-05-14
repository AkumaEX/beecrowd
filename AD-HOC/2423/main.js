function maxCakes(a, b, c) {
    return Math.min(parseInt(a / 2), parseInt(b / 3), parseInt(c / 5));
}

let [a, b, c] = require('fs').readFileSync('/dev/stdin', 'utf-8').split(' ').map(Number);
console.log(maxCakes(a, b, c));
