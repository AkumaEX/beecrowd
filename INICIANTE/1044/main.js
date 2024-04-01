function isMultiple(a, b) {
    return a % b === 0 || b % a === 0;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [a, b] = lines[0].split(' ').map(Number);
console.log(isMultiple(a, b) ? 'Sao Multiplos' : 'Nao sao Multiplos');
