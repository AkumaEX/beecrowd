function canFix(l) {
    let segments = [];
    for (let i = 1; i <= l; i++) {
        segments.push(lines[i].split(' ').map(Number));
    }
    let connected = new Set(segments.shift());
    let hasChange = true;
    while (hasChange) {
        hasChange = false;
        for (let times = 0; times < segments.length; times++) {
            let [x, y] = segments.shift();
            if (connected.has(x) || connected.has(y)) {
                connected.add(x).add(y);
                hasChange = true;
            } else {
                segments.push([x, y]);
            }
        }
    }
    return segments.length === 0;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
let l = parseInt(lines[0].split(' ')[1]);
console.log(canFix(l) ? 'COMPLETO' : 'INCOMPLETO');