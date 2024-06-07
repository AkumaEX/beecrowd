let results = { 3: 'terno', 4: 'quadra', 5: 'quina', 6: 'sena' };

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let your = lines.shift().split(' ').map(Number);
let draw = lines.shift().split(' ').map(Number);
let hits = your.filter(number => draw.includes(number)).length;
console.log(results[hits] || 'azar');
