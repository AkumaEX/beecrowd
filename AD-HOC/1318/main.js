let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let [n, m] = lines[i++];
while (n || m) {
    let tickets = lines[i++].split(' ').map(Number);
    let clones = {};
    for (let ticket of tickets) {
        clones[ticket] = ticket in clones ? 1 : 0;
    }
    console.log(Object.values(clones).reduce((a, b) => a + b));
    [n, m] = lines[i++].split(' ').map(Number);
}
