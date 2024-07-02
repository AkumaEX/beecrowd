function notReturned(n) {
    let allDivers = [];
    for (let diver = 1; diver <= n; diver++) allDivers.push(diver);
    let returned = lines.shift().split(' ').map(Number);
    return allDivers.filter((diver, _) => !returned.includes(diver));
}

function formattedPrint(divers) {
    for (let diver of divers)
        process.stdout.write(`${diver} `);
    console.log('');
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
let line;
while (line = lines.shift()) {
    let [n, r] = line.split(' ').map(Number);
    if (n > r) {
        let divers = notReturned(n);
        formattedPrint(divers);
    } else {
        lines.shift();
        console.log('*');
    }
}
