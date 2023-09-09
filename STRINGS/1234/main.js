let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

for (let line of lines) {
    if (line) {
        line = line.toLowerCase().split('');
        caps = true;
        for (let [i, character] of line.entries()) {
            if (character == ' ') {
                continue;
            }
            if (caps) {
                line[i] = character.toUpperCase();
            }
            caps = !caps;
        }
        console.log(line.join(''));
    }
}
