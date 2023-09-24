let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
while (lines[i]) {
    let angle = parseInt(lines[i++]);
    if (angle % 6 === 0) {
        console.log('Y');
    } else {
        console.log('N');
    }
}
