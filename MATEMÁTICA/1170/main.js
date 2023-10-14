function elapsed(c) {
    let days = 0;
    while (c > 1) {
        days++;
        c /= 2;
    }
    return days;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
for (let i = 1; i <= n; i++) {
    let c = parseFloat(lines[i]);
    console.log(`${elapsed(c)} dias`);
}
