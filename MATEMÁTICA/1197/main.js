let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
for (let line of lines) {
    if (line) {
        let [v, t] = line.split(' ').map(Number);
        console.log(v * 2 * t + 0); // + 0 avoid negative zero 
    }
}
