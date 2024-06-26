let x = parseInt(require('fs').readFileSync('/dev/stdin', 'utf-8').trim());
x = x + 1 - x % 2;
for (let odd = x; odd < x + 11; odd += 2)
    console.log(odd);
