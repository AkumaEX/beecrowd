function numPlates(c, d) {
    return c > 0 || d > 0 ? 26 ** c * 10 ** d : 0
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let t = parseInt(lines.shift());
while (t--) {
    let [c, d] = lines.shift().split(' ').map(Number);
    console.log(numPlates(c, d));
}
