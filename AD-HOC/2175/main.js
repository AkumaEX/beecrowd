function fastest(o, b, i) {
    if (o < b && o < i) return 'Otavio';
    if (b < o && b < i) return 'Bruno';
    if (i < o && i < b) return 'Ian';
    return 'Empate';
}

let line = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let [o, b, i] = line.shift().split(' ').map(Number);
console.log(fastest(o, b, i));
