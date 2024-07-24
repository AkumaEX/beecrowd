function gcd(a, b) {
    if (a === 0) return b;
    return gcd(b % a, a);
}

function formattedPrint(sides) {
    sides.sort((a, b) => a - b);
    if (Math.pow(sides[2], 2) == Math.pow(sides[1], 2) + Math.pow(sides[0], 2)) {
        if (gcd(gcd(sides[2], sides[1]), sides[0]) == 1) {
            console.log('tripla pitagorica primitiva');
        } else {
            console.log('tripla pitagorica');
        }
    } else {
        console.log('tripla');
    }
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let line of lines) {
    let sides = line.split(' ').map(Number);
    formattedPrint(sides);
}
