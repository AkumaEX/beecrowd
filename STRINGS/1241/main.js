function fits(b, a) {
    return RegExp(b + '$').test(a);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
for (let i = 1; i <= n; i++) {
    let [a, b] = lines[i].trim().split(' ');
    console.log(fits(b, a) ? 'encaixa' : 'nao encaixa');
}
