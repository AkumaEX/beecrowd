function formattedPrint(sequence) {
    for (let value of sequence) console.log(value);
}

let original = require('fs').readFileSync('/dev/stdin', 'utf-8').split(' ').map(Number);
let sorted = [...original].sort((a, b) => a - b);
formattedPrint(sorted);
console.log();
formattedPrint(original);
