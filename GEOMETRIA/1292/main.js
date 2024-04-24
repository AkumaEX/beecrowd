function largestSide(f) {
    return f * Math.sin(108 * Math.PI / 180) / Math.sin(63 * Math.PI / 180);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let line of lines) {
    let f = parseFloat(line);
    console.log(`${largestSide(f).toFixed(10)}`);
}
