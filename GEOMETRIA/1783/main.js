function getStarPoint() {
    let [x, y] = lines[i++].split(' ').map(Number);
    return { x: x, y: y };
}

function getBlackHolePoint(s1Before, s1After, s2Before, s2After) {
    let x1 = (s1Before.x + s1After.x) / 2;
    let y1 = (s1Before.y + s1After.y) / 2;
    let m1 = (s1Before.y - s1After.y) / (s1Before.x - s1After.x);

    let x2 = (s2Before.x + s2After.x) / 2;
    let y2 = (s2Before.y + s2After.y) / 2;
    let m2 = (s2Before.y - s2After.y) / (s2Before.x - s2After.x);

    if (m1 === 0) {
        if (m2 === 0) {
            return { x: x1, y: y2 };
        }
        return { x: x1, y: y2 - (x1 - x2) / m2 };
    }

    let x = ((y2 - y1) * m1 * m2 + ((m1 * x2) - (m2 * x1))) / (m1 - m2);
    let y = y1 - (x - x1) / m1;
    return { x: x, y: y };
}

function printFormatted(c, point) {
    console.log(`Caso #${c}: ${point.x.toFixed(2)} ${point.y.toFixed(2)}`);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let t = parseInt(lines[i++]);
for (let c = 1; c <= t; c++) {
    let s1Before = getStarPoint();
    let s2Before = getStarPoint();
    let s1After = getStarPoint();
    let s2After = getStarPoint();
    let blackHole = getBlackHolePoint(s1Before, s1After, s2Before, s2After);
    printFormatted(c, blackHole);
}