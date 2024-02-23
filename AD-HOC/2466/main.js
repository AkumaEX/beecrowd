function lastLine(colors) {
    while (colors.length > 1) {
        colors = _nextRow(colors);
    }
    return colors[0];
}

function _nextRow(colors) {
    let nextRow = [];
    for (let i = 0; i < colors.length - 1; i++) {
        nextRow.push(colors[i] === colors[i + 1] ? 1 : -1);
    }
    return nextRow;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let colors = lines[1].split(' ').map(Number);
console.log(lastLine(colors) > 0 ? 'preta' : 'branca');
