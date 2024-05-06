function getTable(n) {
    let table = [];
    while (n--)
        table.push(parseInt(lines.shift()));
    return table;
}

function minesFrom(table, n) {
    let mines = [];
    for (let i = 0; i < n; i++) {
        mines.push(table[i]);
        if (i - 1 >= 0) mines[i] += table[i - 1];
        if (i + 1 < n) mines[i] += table[i + 1];
    }
    return mines;
}

function formattedPrint(mines) {
    for (let mine of mines)
        console.log(mine);
}

var lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
let table = getTable(n);
let mines = minesFrom(table, n);
formattedPrint(mines);
