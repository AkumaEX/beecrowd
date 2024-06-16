let x = parseInt(require('fs').readFileSync('/dev/stdin', 'utf-8').trim());
for (let number = 1; number <= x; number += 2)
    console.log(number);
