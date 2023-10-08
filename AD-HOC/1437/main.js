let directions = ['N', 'L', 'S', 'O'];

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let n;
while (n = parseInt(lines[i++])) {
    let direction = 0;
    for (let command of lines[i++]) {
        command == 'D' ? direction++ : direction--;
    }
    let last = (direction % 4 + 4) % 4;
    console.log(directions[last]);
}
