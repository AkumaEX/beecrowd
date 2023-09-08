let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let n = lines[0];
for (let i = 1; i <= n; i++) {
    let x = lines[i];
    let grains = Math.pow(2, x);
    let weight = parseInt((grains / 12) / 1000);
    console.log(`${weight} kg`);
}
