function getFlights(a, v) {
    let flights = Array(a).fill(0);
    while (v--) {
        let [x, y] = lines[i++].split(' ').map(Number);
        flights[x - 1]++;
        flights[y - 1]++;
    }
    return flights;
}

function formattedPrint(test, flights) {
    let maxFlights = Math.max(...flights);
    console.log(`Teste ${test}`);
    for (let airport in flights) {
        if (flights[airport] == maxFlights)
            process.stdout.write(`${++airport} `);
    }
    console.log('\n');
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let i = 0, test = 1;
let [a, v] = lines[i++].split(' ').map(Number);
while (a || v) {
    formattedPrint(test++, getFlights(a, v));
    [a, v] = lines[i++].split(' ').map(Number);
}
