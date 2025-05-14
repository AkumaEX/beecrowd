function quadrant(x, y) {
    if (x === 0.0 && y === 0.0) return 'Origem';
    if (x === 0.0) return 'Eixo Y';
    if (y === 0.0) return 'Eixo X';
    if (x > 0) return y > 0 ? 'Q1' : 'Q4';
    return y > 0 ? 'Q2' : 'Q3';
}

let [x, y] = require('fs').readFileSync('/dev/stdin', 'utf-8').split(' ').map(Number);
console.log(quadrant(x, y));
