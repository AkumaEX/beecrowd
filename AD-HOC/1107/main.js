function numLasers(a, c, x) {
    let lasers = a - x[0];
    for (let i = 1; i < c; i++)
        if (x[i - 1] > x[i]) lasers += x[i - 1] - x[i];
    return lasers;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [a, c] = lines.shift().split(' ').map(Number);
while (a || c) {
    let x = lines.shift().split(' ').map(Number);
    console.log(numLasers(a, c, x));
    [a, c] = lines.shift().split(' ').map(Number);
}
