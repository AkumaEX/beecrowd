function maxLethality(n, a) {
    a = a.sort((p, q) => p - q);
    let lethality = 0;
    for (let i = 0; i < parseInt(n / 2); i++) {
        lethality += a[n - 1 - i] - a[i];
    }
    return lethality;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let line;
while (line = lines.shift()) {
    let n = parseInt(line);
    let a = lines.shift().split(' ').map(Number);
    console.log(maxLethality(n, a));
}
