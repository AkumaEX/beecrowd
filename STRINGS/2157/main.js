function mirroredSequence(b, e) {
    let sequence = '';
    for (let i = b; i <= e; i++) {
        sequence += i;
    }
    for (let i = sequence.length-1; i >= 0; i--) {
        sequence += sequence[i];
    }
    return sequence;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let c = parseInt(lines[0]);
for (let i = 1; i <=c; i++) {
    let [b, e] = lines[i].split(' ').map(Number);
    console.log(mirroredSequence(b, e));
}