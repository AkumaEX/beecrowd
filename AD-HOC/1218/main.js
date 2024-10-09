function getShoes() {
    let shoes = {};
    let line = lines[i++].trim().split(' ');
    while (line.length) {
        let [size, genre] = [line.shift(), line.shift()];
        if (!(size in shoes)) shoes[size] = { 'F': 0, 'M': 0 };
        shoes[size][genre]++;
    }
    return shoes;
}

function formattedPrint(c, n, shoes) {
    let f = n in shoes ? shoes[n].F : 0;
    let m = n in shoes ? shoes[n].M : 0;
    if (c) console.log('');
    console.log(`Caso ${c + 1}:`);
    console.log(`Pares Iguais: ${f + m}`);
    console.log(`F: ${f}`);
    console.log(`M: ${m}`);
}

let i = 0; lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let c = 0; i < lines.length; c++) {
    let n = lines[i++].trim();
    let shoes = getShoes();
    formattedPrint(c, n, shoes);
}
