let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let alternatives = ['A', 'B', 'C', 'D', 'E'];
let i = 0;
let n = parseInt(lines[i++]);
while (n !== 0) {
    for (let j = 0; j < n; j++) {
        let choice = lines[i++].split(' ').flatMap((mean, i) => parseInt(mean) <= 127 ? alternatives[i] : []);
        if (choice.length == 1) {
            console.log(choice[0]);
        } else {
            console.log('*');
    }
    } n = parseInt(lines[i++]);
}
