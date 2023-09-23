let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
while (n = lines[i++]) {
    let notes = lines[i++].split(' ').map(Number);
    let sum = notes.reduce((a, b) => a + b, 0);
    if (sum % n > 0) {
        console.log(-1);
    } else {
        let changes = 0;
        let average = sum / n;
        for (let note of notes) {
            if (note > average) {
                changes += note - average;
            }
        }
        console.log(changes + 1);
    }
}
