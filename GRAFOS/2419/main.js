function coastSize(m, n) {
    let size = 0;
    let map = _getMap(m);
    for (let i = 0; i < m; i++) {
        for (let j = 0; j < n; j++) {
            if (_isCoast(map, i, j, m, n)) {
                size++;
            }
        }
    }
    return size;
}

function _getMap(m) {
    map = [];
    for (let i = 1; i <= m; i++) {
        map.push(lines[i]);
    }
    return map;
}

function _isCoast(map, i, j, m, n) {
    if (map[i][j] == '#') {
        if (i === 0 || i === m - 1 || j === 0 || j === n - 1) {
            return true;
        }
        if (map[i - 1][j] == '.' || map[i + 1][j] == '.' || map[i][j - 1] == '.' || map[i][j + 1] == '.') {
            return true;
        }
    }
    return false;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
let [m, n] = lines[0].split(' ').map(Number);
console.log(coastSize(m, n));
