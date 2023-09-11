let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let n = parseInt(lines[0]);
for (let i = 1; i <= n; i++) {
    let diamonds = 0;
    let potential = 0;
    for (let object of lines[i]) {
        if (object != '.') {
            if (object == '<') 
                potential++;
             else if (object == '>' && potential > 0) {
                potential--;
                diamonds++;
            }
        }
    }
    console.log(diamonds);
}
