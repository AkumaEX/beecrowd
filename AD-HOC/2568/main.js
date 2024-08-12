function predict(d, i, x, f) {
    if (d % 2 === 0) return i - (f % 2) * x;
    return i + (f % 2) * x;
}

let [d, i, x, f] = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split(' ').map(Number);
console.log(predict(d, i, x, f));
