function canCatch(d, vf, vg) {
    let sg = vg * 12 / vf;
    return sg * sg >= d * d + 12 * 12;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
for (let line of lines) {
    if (line) {
        let [d, vf, vg] = line.split(' ').map(Number);
        console.log(canCatch(d, vf, vg) ? 'S' : 'N')
    }
}