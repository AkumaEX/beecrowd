function formattedPrint(m, n) {
    if (m > n) [m, n] = [n, m];
    let sequence = [];
    for (let num = m; num <= n; num++) sequence.push(num);
    console.log(`${sequence.join(' ')} Sum=${sequence.reduce((a, b) => a + b)}`);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [m, n] = lines.shift().split(' ').map(Number);
while (m > 0 && n > 0) {
    formattedPrint(m, n);
    [m, n] = lines.shift().split(' ').map(Number);
}
