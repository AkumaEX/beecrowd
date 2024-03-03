let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.trim().split('\n');

let well_behaved = 0;
let names = [];
let n = parseInt(lines.shift());
for (let line of lines) {
    let [behavior, name] = line.split(' ');
    if (behavior == '+') {
        well_behaved++;
    }
    names.push(name);
}
for (let name of names.sort()) {
    console.log(name);
}
console.log(`Se comportaram: ${well_behaved} | Nao se comportaram: ${n - well_behaved}`);
