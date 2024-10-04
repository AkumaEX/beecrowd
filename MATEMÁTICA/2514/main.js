function gcd(a, b) {
    if (b === 0) return a;
    return gcd(b, a % b);
}

function lcm(a, b) {
    return a * b / gcd(a, b);
}

function nextAlignment(m, l1, l2, l3) {
    return lcm(lcm(l1, l2), l3) - m;
}

let i = 0, lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
while (i < lines.length) {
    let m = parseInt(lines[i++]);
    let [l1, l2, l3] = lines[i++].split(' ').map(Number);
    console.log(nextAlignment(m, l1, l2, l3));
}
