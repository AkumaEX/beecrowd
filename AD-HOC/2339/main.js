function isEnough(c, p, f) {
    return c * f <= p;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [c, p, f] = lines[0].split(' ').map(Number);
console.log(isEnough(c, p, f) ? 'S' : 'N');
