function getShoes(n) {
    let shoes = { 'F': 0, 'M': 0 };
    let line = lines.shift().trim().split(' ');
    for (let i = 0; i < line.length; i += 2) {
        let [size, genre] = [parseInt(line[i]), line[i + 1]];
        shoes[genre] += size === n;
    }
    return shoes;
}

function formattedPrint(c, shoes) {
    if (c > 1) console.log('');
    console.log(`Caso ${c}:`);
    console.log(`Pares Iguais: ${shoes.F + shoes.M}`);
    console.log(`F: ${shoes.F}`);
    console.log(`M: ${shoes.M}`);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let c = 1; lines.length; c++) {
    let n = parseInt(lines.shift());
    formattedPrint(c, getShoes(n));
}
