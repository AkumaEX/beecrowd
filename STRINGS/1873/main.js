wins = {
    'tesoura': ['papel', 'lagarto'],
    'papel': ['pedra', 'spock'],
    'pedra': ['lagarto', 'tesoura'],
    'lagarto': ['spock', 'papel'],
    'spock': ['tesoura', 'pedra']
};

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let c = parseInt(lines.shift());
while (c--) {
    let [rajesh, sheldon] = lines.shift().trim().split(' ');
    if (wins[rajesh].includes(sheldon))
        console.log('rajesh');
    else if (wins[sheldon].includes(rajesh))
        console.log('sheldon');
    else
        console.log('empate');
}
