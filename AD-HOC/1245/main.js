function getPairs(n) {
    let pairs = {};
    while (n--) {
        let [m, l] = lines[i++].trim().split(' ');
        if (!(m in pairs)) pairs[m] = { 'E': 0, 'D': 0 };
        pairs[m][l]++;
    }
    return pairs;
}

function getTotal(pairs) {
    let total = 0;
    for (let pair of Object.values(pairs))
        total += Math.min(pair.E, pair.D);
    return total;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let n, i = 0;
while (n = parseInt(lines[i++])) {
    let pairs = getPairs(n);
    console.log(getTotal(pairs));
}
