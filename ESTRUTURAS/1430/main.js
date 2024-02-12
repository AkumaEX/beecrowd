function numCorrectDuration(compasses) {
    let correctDuration = 0;
    for (let compass of compasses) {
        if (_isDurationCorrect(compass)) {
            correctDuration++;
        }
    }
    return correctDuration;
}

function _isDurationCorrect(compass) {
    let duration = { 'W': 1, 'H': 0.5, 'Q': 0.25, 'E': 0.125, 'S': 0.0625, 'T': 0.03125, 'X': 0.015625 };
    let total = 0;
    for (let note of compass) {
        total += duration[note];
    }
    return total == 1.0;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let compasses, i = 0;
while (!(compasses = lines[i++].split('/')).includes('*')) {
    console.log(numCorrectDuration(compasses));
}