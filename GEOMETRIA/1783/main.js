function getCoordinates(x1Before, y1Before, x1After, y1After, x2Before, y2Before, x2After, y2After) {
    let [xm1, ym1, m1] = _getParams(x1Before, y1Before, x1After, y1After);
    let [xm2, ym2, m2] = _getParams(x2Before, y2Before, x2After, y2After);

    if (m1 === 0) {
        return [xm1, ym2 + m2 * (xm1 - xm2)];
    }
    if (m2 === 0) {
        return [xm2, ym1 + m1 * (xm2 - xm1)];
    }
    let x = (m1 * xm1 - ym1 - m2 * xm2 + ym2) / (m1 - m2);
    let y = ym1 + m1 * (x - xm1);
    return [x, y];
}

function _getParams(xBefore, yBefore, xAfter, yAfter) {
    let xm = (xBefore + xAfter) / 2;
    let ym = (yBefore + yAfter) / 2;
    let m = (yBefore != yAfter) ? -(xBefore - xAfter) / (yBefore - yAfter) : 0;
    return [xm, ym, m];
}


function printFormatted(c, x, y) {
    console.log(`Caso #${c}: ${x.toFixed(2)} ${y.toFixed(2)}`);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let t = parseInt(lines[i++]);
for (let c = 1; c <= t; c++) {
    let [x1Before, y1Before] = lines[i++].split(' ').map(Number);
    let [x2Before, y2Before] = lines[i++].split(' ').map(Number);
    let [x1After, y1After] = lines[i++].split(' ').map(Number);
    let [x2After, y2After] = lines[i++].split(' ').map(Number);
    let [x, y] = getCoordinates(x1Before, y1Before, x1After, y1After, x2Before, y2Before, x2After, y2After);
    printFormatted(c, x, y);
}