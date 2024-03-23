let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let t = parseInt(lines.shift());
for (let i = 0; i < t; i++) {
    let [n, ...ages] = lines.shift().split(' ').map(Number);
    console.log(`Case ${i + 1}: ${ages[parseInt(n / 2)]}`);
}
