function fits(b, a) {
    let numDigitsB = b.toString().length;
    let lastDigitsA = a % 10 ** numDigitsB;
    return lastDigitsA === b;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = lines[0];
for (let i = 1; i <= n; i++) {
    let [a, b] = lines[i].split(' ').map(Number);
    if (fits(b, a)) {
        console.log('encaixa');
    } else {
        console.log('nao encaixa');
    }
}
