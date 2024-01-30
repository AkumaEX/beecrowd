let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let c = parseInt(lines[0]);
for (let i = 1; i <= c; i++) {
    let [expression, result] = lines[i].split('=');
    let difference = Math.abs(eval(expression.replace('x', '*')) - parseInt(result));
    console.log('E' + 'r'.repeat(difference) + 'ou!');
}