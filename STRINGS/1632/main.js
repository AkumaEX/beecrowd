function getNumVariations(s) {
    return Math.pow(3, (s.match(/[AEIOS]/ig) || []).length) * Math.pow(2, (s.match(/[^AEIOS]/ig) || []).length);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let t = parseInt(lines[0]);
for (let i = 1; i <= t; i++) {
    let s = lines[i].trim();
    let numVariations = getNumVariations(s);
    console.log(numVariations);
}
