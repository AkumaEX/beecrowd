function maxOf(h) {
    let maxValue = h;
    while (h != 1) {
        h = h % 2 ? 3 * h + 1 : h / 2;
        if (h > maxValue) maxValue = h;
    }
    return maxValue;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
while (h = parseInt(lines.shift())) {
    console.log(maxOf(h));
}
