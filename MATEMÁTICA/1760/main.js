function area(l) {
    return Math.pow(l, 2) * 2 * Math.sqrt(3) / 5;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let l of lines.map(Number)) {
    console.log(area(l).toFixed(2));
}
