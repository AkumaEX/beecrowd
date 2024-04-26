function getMinDistance(points) {
    let distances = [];
    for (let p1 = 0; p1 < points.length - 1; p1++) {
        for (let p2 = p1 + 1; p2 < points.length; p2++) {
            let distance = 0;
            for (let p = 0; p < points.length; p++) {
                distance += _distance(...points[p1], ...points[p2], ...points[p]);
            }
            distances.push(Math.abs(distance));
        }
    }
    return Math.min(...distances);
}

function _distance(x1, y1, x2, y2, x, y) {
    return ((x2 - x1) * (y - y1) - (x - x1) * (y2 - y1)) / Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let n;
while (n = parseInt(lines.shift())) {
    let points = [];
    while (n--) {
        let [x, y] = lines.shift().split(' ').map(Number);
        points.push([x, y]);
    }
    console.log(getMinDistance(points).toFixed(3));
}
