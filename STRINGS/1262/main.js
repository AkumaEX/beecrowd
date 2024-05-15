function minCycles(sequence, p) {
    let regex = RegExp(`R{1,${p}}|W{1}`, 'g');
    return sequence.match(regex).length;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let sequence;
while (sequence = lines.shift()) {
    let p = parseInt(lines.shift());
    console.log(minCycles(sequence, p));
}
