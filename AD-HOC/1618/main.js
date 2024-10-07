function inside(ax, ay, cx, cy, rx, ry) {
    return ax <= rx && rx <= cx && ay <= ry && ry <= cy ? 1 : 0;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n--) {
    let [ax, ay, bx, by, cx, cy, dx, dy, rx, ry] = lines.shift().split(' ').map(Number);
    console.log(inside(ax, ay, cx, cy, rx, ry));
}
