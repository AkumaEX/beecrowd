let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0
while (lines[i]) {
    let n = parseInt(lines[i++]);
    let start = lines[i++].split(' ').map(Number);
    let finish = lines[i++].split(' ').map(Number);
    let overtakes = 0;
    for (let position in finish) {
        if (finish[position] != start[position]) {
            let before = start.indexOf(finish[position]);
            start.splice(position, 0, start.splice(before, 1)[0]);
            overtakes += before - position;
        }
    }
    console.log(overtakes);
}
