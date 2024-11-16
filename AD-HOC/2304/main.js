function total(i, n) {
    let players = { 'D': i, 'E': i, 'F': i };
    while (n--) {
        let transaction = lines.shift().split(' ');
        if (transaction[0] == 'C')
            players[transaction[1]] -= parseInt(transaction[2]);
        else if (transaction[0] == 'V')
            players[transaction[1]] += parseInt(transaction[2]);
        else {
            players[transaction[1]] += parseInt(transaction[3]);
            players[transaction[2]] -= parseInt(transaction[3]);
        }
    }
    return Object.values(players);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [i, n] = lines.shift().split(' ').map(Number);
console.log(total(i, n).join(' '));
