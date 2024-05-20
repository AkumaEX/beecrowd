function h(n, l, b, B, H) {
    if (b == B)
        return l / (n * Math.PI * Math.pow(b, 2));
    let r = Math.cbrt(((3 * l * (B - b)) / (n * Math.PI * H)) + Math.pow(b, 3), 3);
    return H * (r - b) / (B - b);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let c = parseInt(lines.shift());
while (c--) {
    let [n, l] = lines.shift().split(' ').map(Number);
    let [b, B, H] = lines.shift().split(' ').map(Number);
    console.log(h(n, l, b, B, H).toFixed(2));
}
