let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let count = {};
for (let i = 1; i <= lines[0]; i++) {
    num = parseInt(lines[i]);
    if (count[num]) {
        count[num] += 1;
    } else {
        count[num] = 1;
    }
}
for (let num of Object.keys(count)) {
    console.log(`${num} aparece ${count[num]} vez(es)`);
}
