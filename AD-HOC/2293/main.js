function getField(n) {
    let field = [];
    while (n--)
        field.push(lines.shift().split(' ').map(Number));
    return field;
}

function getMaxWorms(n, m, field) {
    let maxWorms = 0;
    for (let i = 0; i < n; i++) {
        let worms = 0;
        for (let j = 0; j < m; j++)
            worms += field[i][j];
        if (worms > maxWorms) maxWorms = worms;
    }
    for (let j = 0; j < m; j++) {
        let worms = 0;
        for (let i = 0; i < n; i++)
            worms += field[i][j];
        if (worms > maxWorms) maxWorms = worms;
    }
    return maxWorms;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [n, m] = lines.shift().split(' ').map(Number);
console.log(getMaxWorms(n, m, getField(n)));
