let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let t;
while (t = parseInt(lines.shift())) {
    for (let i = 0; i < t; i++) {
        let [q, a, b] = lines.shift().split(' ').map(Number);
        console.log(`Size #${i + 1}:`);
        console.log(`Ice Cream Used: ${(q * (a + b) * 2.5).toFixed(2)} cm2`);
    }
    console.log();
}
