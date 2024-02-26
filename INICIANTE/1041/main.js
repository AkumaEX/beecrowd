function quadrant(x, y) {
    if (x === 0.0 || y === 0.0) {
        if (x === 0.0 && y === 0.0) {
            return 'Origem';
        }
        return x === 0.0 ? 'Eixo Y' : 'Eixo X';
    }
    if (x > 0) {
        return y > 0 ? 'Q1' : 'Q4';
    }
    return y > 0 ? 'Q2' : 'Q3';
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [x, y] = lines[0].split(' ').map(Number);
console.log(quadrant(x, y));
