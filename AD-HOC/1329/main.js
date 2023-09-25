let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let n = parseInt(lines[i++]);
while (n !== 0) {
    let results = lines[i++].split(' ').map(Number);
    let john = results.reduce((a, b) => a + b);
    let mary = n - john;
    console.log(`Mary won ${mary} times and John won ${john} times`)
    n = parseInt(lines[i++]);
}
