function formattedPrint(sequence) {
    for (let num of sequence) console.log(num);
}


let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let original = lines[0].split(' ').map(Number);
formattedPrint([...original].sort((a, b) => a - b));
console.log();
formattedPrint(original);
