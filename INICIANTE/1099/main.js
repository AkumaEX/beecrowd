function getXy() {
    let [a, b] = lines.shift().split(' ').map(Number);
    if (a > b) [a, b] = [b, a];
    return [a + 1, b];
}

function sumOdds(x, y) {
    let total = 0;
    for (let num = x; num < y; num++)
        if (num % 2) total += num;
    return total;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--) {
    let [x, y] = getXy();
    console.log(sumOdds(x, y));
}
