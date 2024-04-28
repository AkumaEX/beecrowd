function area(n, h, c, l) {
    let d = Math.sqrt(Math.pow(h, 2) + Math.pow(c, 2));
    return n * d * l / 10000;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n;
while (n = parseInt(lines.shift())) {
    let [h, c, l] = lines.shift().split(' ').map(Number);
    console.log(area(n, h, c, l).toFixed(4));
}
