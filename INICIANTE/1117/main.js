function average() {
    let grade1 = parseFloat(lines.shift());
    while (grade1 < 1 || grade1 > 10) {
        console.log('nota invalida');
        grade1 = parseFloat(lines.shift());
    }
    let grade2 = parseFloat(lines.shift());
    while (grade2 < 1 || grade2 > 10) {
        console.log('nota invalida');
        grade2 = parseFloat(lines.shift());
    }
    return (grade1 + grade2) / 2;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
console.log(`media = ${average().toFixed(2)}`);
