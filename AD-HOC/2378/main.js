function exceeded(n, c) {
    let weight = 0;
    while (n--) {
        let [s, e] = lines.shift().split(' ').map(Number);
        weight += e - s;
        if (weight > c) return true;
    }
    return false;
}

var lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [n, c] = lines.shift().split(' ').map(Number);
console.log(exceeded(n, c) ? 'S' : 'N');
