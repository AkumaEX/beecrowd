function maior(a, b) {
  return (a + b + Math.abs(a - b)) / 2;
}

let [a, b, c] = require('fs').readFileSync('/dev/stdin', 'utf-8').split(' ').map(Number);
console.log(`${maior(maior(a, b), c)} eh o maior`);
