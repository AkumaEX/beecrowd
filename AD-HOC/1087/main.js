function diagonal_search(x1, y1, x2, y2, h, v) {
    if (x1 < 1 || x1 > 8 || y1 < 1 || y1 > 8) {
        return false;
    }
    if (x1 == x2 && y1 == y2) {
        return true;
    }
    return diagonal_search(x1 + h, y1 + v, x2, y2, h, v);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
for (let line of lines) {
    let [x1, y1, x2, y2] = line.split(' ').map(Number);
    if (x1 == 0) {
        break;
    }
    if (x1 == x2 && y1 == y2) {
        console.log(0);
    } else if (x1 == x2 || y1 == y2 || diagonal_search(x1, y1, x2, y2, -1, -1) || diagonal_search(x1, y1, x2, y2, -1, 1) || diagonal_search(x1, y1, x2, y2, 1, -1) || diagonal_search(x1, y1, x2, y2, 1, 1)) {
        console.log(1);
    } else {
        console.log(2);
    }
}
