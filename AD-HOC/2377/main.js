function totalCost(l, d, k, p) {
    let distance = l * k;
    let tolls = parseInt(l / d) * p;
    return distance + tolls;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [l, d] = lines[0].split(' ').map(Number);
let [k, p] = lines[1].split(' ').map(Number);
console.log(totalCost(l, d, k, p));
