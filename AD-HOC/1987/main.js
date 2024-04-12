function digitSumOf(m) {
    return m.split('').map(Number).reduce((value, element) => value + element);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let line of lines) {
    let m = line.split(' ')[1];
    let digitSum = digitSumOf(m);
    console.log(`${digitSum} ${digitSum % 3 == 0 ? 'sim' : 'nao'}`);
}
