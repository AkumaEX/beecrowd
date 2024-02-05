let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [p, r] = lines[0].split(' ').map(Number);
if (p === 0) {
    console.log('C');
} else if (r === 0) {
    console.log('B');
} else {
    console.log('A');
}
