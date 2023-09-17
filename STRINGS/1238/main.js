let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = lines[0];
for (let t = 1; t <= n; t++) {
    let result = [];
    let [str_i, str_j] = lines[t].split(' ');
    let [i, j] = [0, 0];
    while (i < str_i.length || j < str_j.length) {
        if (i < str_i.length) {
            result.push(str_i[i ++]);
        }
        if (j < str_j.length) {
            result.push(str_j[j ++]);
        }
    }
    console.log(result.join(''));
}
