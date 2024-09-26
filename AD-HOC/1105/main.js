function isPossible(b, n) {
    let banks = lines.shift().split(' ').map(Number);
    while (n--) {
        let [d, c, v] = lines.shift().split(' ').map(Number);
        banks[d - 1] -= v;
        banks[c - 1] += v;
    }
    for (let reserve of banks) {
        if (reserve < 0) return false;
    }
    return true;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [b, n] = lines.shift().split(' ').map(Number);
while (b || n) {
    console.log(isPossible(b, n) ? 'S' : 'N');
    [b, n] = lines.shift().split(' ').map(Number);
}
