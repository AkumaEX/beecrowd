let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [na, da, va] = lines.shift().split(' ').map(Number);
let [nb, db, vb] = lines.shift().split(' ').map(Number);
console.log((da / va) < (db / vb) ? na : nb);
