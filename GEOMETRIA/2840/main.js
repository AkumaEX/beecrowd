function ballons(radius, liters) {
    const pi = 3.1415;
    let volume = (4 / 3) * pi * Math.pow(r, 3);
    return parseInt(liters / volume);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [r, l] = lines[0].split(' ').map(Number);
console.log(ballons(r, l));