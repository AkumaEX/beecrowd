let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

for (let i = 1; i <= lines[0]; i++) {
    let [digit1, letter, digit2] = [
        parseInt(lines[i][0]),
        lines[i],
        parseInt(lines[i][2])
    ];
    if (digit2 == digit1) {
        console.log(digit2 * digit1);
    } else if (letter == letter.toUpperCase()) {
        console.log(digit2 - digit1);
    } else {
        console.log(digit2 + digit1);
    }
}
