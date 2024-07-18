let line = require('fs').readFileSync('/dev/stdin', 'utf-8').trim();
let total = 0;
let n = 0;
for (let s = line.split(''); s.length; n++) {
    let digit = parseInt(s.pop());
    total += digit;
    if (digit === 0) {
        s.pop();
        total += 10;
    }
}
console.log((total / n).toFixed(2));
