let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');

function getMedals() {
    let medals = [];
    let n = parseInt(lines.shift());
    while (n--) {
        let [country, gold, silver, bronze] = lines.shift().split(' ');
        medals.push([country, parseInt(gold), parseInt(silver), parseInt(bronze)]);
    }
    return medals;
}

function formattedPrint(medals) {
    let countries = medals.sort((a, b) => b[1] - a[1] || b[2] - a[2] || b[3] - a[3] || a[0].localeCompare(b[0]));
    for (let country of countries)
        console.log(country.join(' '));
}

let medals = getMedals();
formattedPrint(medals);
