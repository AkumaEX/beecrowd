function fillInitialValues() {
    let matrix = [];
    for (let line = 1; line < 7; line++) {
        matrix.push(Array(line).fill(0));
    }
    matrix.push(lines[i++].split(' ').join(' 0 ').split(' ').map(Number));
    matrix.push(Array(8).fill(0));
    matrix.push(lines[i++].split(' ').join(' 0 ').split(' ').map(Number));
    return matrix;
}

function solveBaseValues(matrix) {
    for (let i of[0, 2, 4, 6]) { // i is the index of the four base triangles
        matrix[8][i + 1] = (matrix[6][i] - matrix[8][i] - matrix[8][i + 2]) / 2;
    }
    return matrix;
}

function fillAllValues(matrix) {
    for (let line = 7; line >= 0; line--) {
        for (let i = 0; i <= line; i++) {
            matrix[line][i] = matrix[line + 1][i] + matrix[line + 1][i + 1];
        }
    }
    return matrix;
}

function printPyramid(matrix) {
    for (let line of matrix) {
        console.log(line.join(' '));
    }
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let n = parseInt(lines[i++]);
for (let times = 0; times < n; times++) {
    i += 3; // top half values of the pyramid aren't necessary
    printPyramid(fillAllValues(solveBaseValues(fillInitialValues())));
}
