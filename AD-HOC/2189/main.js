function getWinner() {
    let participant = 1;
    for (let ticket of lines[i++].split(' ').map(Number)) {
        if (participant === ticket) {
            break;
        }
        participant++;
    }
    return participant;
}

function printFormatted(test, winner) {
    console.log(`Teste ${test}\n${winner}\n`);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let test = 1;
while (parseInt(lines[i++])) {
    let winner = getWinner();
    printFormatted(test, winner);
    test++;
}