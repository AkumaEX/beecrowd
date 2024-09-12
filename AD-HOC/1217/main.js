let [totalPrice, totalWeight] = [0.0, 0.0];
let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
for (let day = 1; day < n + 1; day++) {
    totalPrice += parseFloat(lines.shift());
    let weight = lines.shift().split(' ').length;
    console.log(`day ${day}: ${weight} kg`);
    totalWeight += weight;
}
console.log(`${(totalWeight / n).toFixed(2)} kg by day`);
console.log(`R$ ${(totalPrice / n).toFixed(2)} by day`);
