function fits(l, a, p, r) {
    return Math.sqrt(Math.pow(l, 2) + Math.pow(a, 2) + Math.pow(p, 2)) <= r * 2;
}

let [l, a, p, r] = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split(' ').map(Number);
console.log(fits(l, a, p, r) ? 'S' : 'N');
