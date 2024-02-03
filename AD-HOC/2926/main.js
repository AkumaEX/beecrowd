function printFormatted(i) {
    let a = 'a'.repeat(i);
    console.log(`Ent${a}o eh N${a}t${a}l!`);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = parseInt(lines[0]);
printFormatted(i);