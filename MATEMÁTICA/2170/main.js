function interestRate(x, y) {
    return 100 * (y - x) / x;
}

function formattedPrint(project, rate) {
    console.log(`Projeto ${project + 1}:`);
    console.log(`Percentual dos juros da aplicacao: ${rate.toFixed(2)} %`);
    console.log();
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let project = 0; project < lines.length; project++) {
    let [x, y] = lines[project].split(' ').map(Number);
    let rate = interestRate(x, y);
    formattedPrint(project, rate);
}
