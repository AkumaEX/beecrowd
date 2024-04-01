function formattedPrint(a, b, c) {
    if (a >= b + c) {
        console.log('NAO FORMA TRIANGULO');
    } else {
        if (Math.pow(a, 2) > Math.pow(b, 2) + Math.pow(c, 2)) {
            console.log('TRIANGULO OBTUSANGULO');
        } else if (Math.pow(a, 2) < Math.pow(b, 2) + Math.pow(c, 2)) {
            console.log('TRIANGULO ACUTANGULO');
        } else {
            console.log('TRIANGULO RETANGULO');
        }
        if (a == b && b == c && c == a) {
            console.log('TRIANGULO EQUILATERO');
        } else if (a == b || b == c || c == a) {
            console.log('TRIANGULO ISOSCELES');
        }
    }
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let sides = lines[0].split(' ').map(Number);
let [a, b, c] = sides.sort((a, b) => b - a);
formattedPrint(a, b, c);
