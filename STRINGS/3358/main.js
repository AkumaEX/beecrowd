let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
for (let i = 1; i <= n; i++) {
    let name = lines[i];
    if (/[^aeiou]{3,}/i.test(name)) {
        console.log(`${name} nao eh facil`);
    } else {
        console.log(`${name} eh facil`);
    }
}
