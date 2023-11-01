function getCells(h) {
    let cells = [];
    for (let times = 0; times < h; times++) {
        cells.push(lines[i++].split(' ').map(Number));
    }
    return cells;
}

function getVacantSpaces(h, p, cells) {
    let vacantSpaces = [];
    for (let column = p - 1; column >= 0; column--) {
        for (let line = h - 1; line >= 0; line--) {
            if (cells[line][column] < 1) {
                vacantSpaces.push([line, column]);
            }
        }
    }
    return vacantSpaces;
}

function insertNewBlocks(cells, vacantSpaces) {
    let queue = lines[i++].split(' ').map(Number);
    for (let [i, [line, column]] of vacantSpaces.entries()) {
        if (i < queue.length) {
            cells[line][column] = queue[i];
        }
    }
}

function printFormatted(cells) {
    for (let line of cells) {
        console.log(line.join(' '));
    }
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let [h, p, f] = lines[i++].split(' ').map(Number);
while (h > 0 && p > 0 && f > 0) {
    let cells = getCells(h);
    let vacantSpaces = getVacantSpaces(h, p, cells);
    insertNewBlocks(cells, vacantSpaces);
    printFormatted(cells);
    [h, p, f] = lines[i++].split(' ').map(Number);
}
