let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let [a, b] = lines[i++].split(' ').map(Number);
while (a !== 0 && b !== 0) {
    let a_set = new Set(lines[i++].split(' ').map(Number));
    let b_set = new Set(lines[i++].split(' ').map(Number));
    let union_set = new Set([...a_set, ...b_set]);
    let difference = Math.min(union_set.size - a_set.size, union_set.size - b_set.size);
    console.log(difference);
    [a, b] = lines[i++].split(' ').map(Number);
}
