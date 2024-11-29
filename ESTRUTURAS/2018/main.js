function getMedals() {
    let medals = {};
    let line, lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
    while (line = lines.shift()) {
        for (let medal = 0; medal < 3; medal++) {
            let country = lines.shift();
            if (!(country in medals))
                medals[country] = [0, 0, 0];
            medals[country][medal]++;
        }
    }
    return medals;
}

function formattedPrint(medals) {
    console.log('Quadro de Medalhas');
    for (let [country, medal] of Object.entries(medals).sort(([countryA, medalsA], [countryB, medalsB]) => medalsB[0] - medalsA[0] || medalsB[1] - medalsA[1] || medalsB[2] - medalsA[2] || +(countryA > countryB) || -(countryB > countryA)))
        console.log(`${country} ${medal.join(' ')}`);
}

medals = getMedals();
formattedPrint(medals);