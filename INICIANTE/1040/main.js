function printResult(n1, n2, n3, n4) {
    let finalGrade = (n1 * 2 + n2 * 3 + n3 * 4 + n4) / 10;
    console.log(`Media: ${finalGrade.toFixed(1)}`);
    if (finalGrade < 5.0) {
        console.log('Aluno reprovado.');
    } else if (finalGrade > 7.0) {
        console.log('Aluno aprovado.');
    } else {
        console.log('Aluno em exame.');
        _printRetakeResult(finalGrade);
    }
}

function _printRetakeResult(finalGrade) {
    let retakeGrade = parseFloat(lines[1]);
    console.log(`Nota do exame: ${retakeGrade.toFixed(1)}`);
    finalGrade = (finalGrade + retakeGrade) / 2;
    console.log(finalGrade < 5.0 ? 'Aluno reprovado.' : 'Aluno aprovado.');
    console.log(`Media final: ${finalGrade.toFixed(1)}`);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [n1, n2, n3, n4] = lines[0].split(' ').map(Number);
printResult(n1, n2, n3, n4);
