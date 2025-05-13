let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let [n1, n2, n3, n4] = lines.shift().split(' ').map(Number);
let finalGrade = (n1 * 2 + n2 * 3 + n3 * 4 + n4) / 10;
console.log(`Media: ${finalGrade.toFixed(1)}`);
if (finalGrade < 5.0) {
    console.log('Aluno reprovado.');
} else if (finalGrade > 7.0) {
    console.log('Aluno aprovado.');
} else {
    console.log('Aluno em exame.');
    let retakeGrade = parseFloat(lines.shift());
    console.log(`Nota do exame: ${retakeGrade}`);
    finalGrade = (finalGrade + retakeGrade) / 2;
    console.log(finalGrade < 5.0 ? 'Aluno reprovado.' : 'Aluno aprovado.');
    console.log(`Media final: ${finalGrade.toFixed(1)}`);
}
