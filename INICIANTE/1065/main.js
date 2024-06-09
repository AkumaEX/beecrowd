let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let even = 0, times = 5;
while (times--) {
    even += parseInt(lines.shift()) % 2 === 0;
}
console.log(`${even} valores pares`);
