function formattedPrint(evens, positives, negatives) {
    console.log(`${evens} valor(es) par(es)`);
    console.log(`${5 - evens} valor(es) impar(es)`);
    console.log(`${positives} valor(es) positivo(s)`);
    console.log(`${negatives} valor(es) negativo(s)`);
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let evens = 0;
let positives = 0;
let negatives = 0;
for (let times = 0; times < 5; times++) {
    let number = parseInt(lines.shift());
    evens += number % 2 === 0;
    positives += number > 0;
    negatives += number < 0;
}
formattedPrint(evens, positives, negatives);
