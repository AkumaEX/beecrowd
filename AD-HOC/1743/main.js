function fits(x, y) {
    for (let i = 0; i < 5; i++) {
        if (x[i] + y[i] != 1) {
            return false;
        }
    }
    return true;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let x = lines[0].split(' ').map(Number);
let y = lines[1].split(' ').map(Number);
console.log(fits(x, y) ? 'Y' : 'N');
