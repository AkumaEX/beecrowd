function getArea() {
    let [x1, y1] = lines.shift().split(' ').map(Number);
    let [x2, y2] = lines.shift().split(' ').map(Number);
    let [x3, y3] = lines.shift().split(' ').map(Number);
    let [x4, y4] = lines.shift().split(' ').map(Number);
    return Math.abs((x1 * y2 - y1 * x2) + (x2 * y3 - y2 * x3) + (x3 * y4 - y3 * x4) + (x4 * y1 - y4 * x1)) / 2;
}

var lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let areaA = getArea();
let areaB = getArea();
console.log(`terreno ${areaA > areaB ? 'A' : 'B'}`);
