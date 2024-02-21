function maxContainers(a, b, c, x, y, z) {
    return parseInt(x / a) * parseInt(y / b) * parseInt(z / c);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [a, b, c] = lines[0].split(' ').map(Number);
let [x, y, z] = lines[1].split(' ').map(Number);
console.log(maxContainers(a, b, c, x, y, z));
