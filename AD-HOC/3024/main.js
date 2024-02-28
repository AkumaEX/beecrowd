function maximumViewpoints(n, x, a) {
    let max = 1;
    let viewpoints = 1;
    for (let i = 0; i < n-1; i++) {
        if (a[i+1] - a[i] > x) {
            viewpoints = 1;
        } else if (++viewpoints > max) {
            max = viewpoints;
        }
    }
    return max;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [n, x] = lines[0].split(' ').map(Number);
let a = lines[1].split(' ').map(Number);
console.log(maximumViewpoints(n, x, a));
