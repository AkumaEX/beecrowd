let even = [];
let odd = [];

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
for (let i = 1; i <= n; i++) {
    let num = parseInt(lines[i]);
    num % 2 === 0 ? even.push(num) : odd.push(num);
}
even = even.sort((a, b) => (a - b));
odd = odd.sort((a, b) => b - a);
for (let num of even.concat(odd)) {
    console.log(num);
}
