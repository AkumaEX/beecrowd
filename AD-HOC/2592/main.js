let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
while (n) {
    let line, tries = 0;
    while ((line = lines.shift().split(' ')).length > 1)
        tries++;
    console.log(tries);
    n = parseInt(line);
}
