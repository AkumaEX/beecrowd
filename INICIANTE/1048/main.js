function readjustmentRate(salary) {
    if (salary > 2000) return 0.04;
    if (salary > 1200) return 0.07;
    if (salary > 800) return 0.10;
    if (salary > 400) return 0.12;
    return 0.15;
}

function formattedPrint(newSalary, moneyEarned, percentage) {
    console.log(`Novo salario: ${newSalary.toFixed(2)}`);
    console.log(`Reajuste ganho: ${moneyEarned.toFixed(2)}`);
    console.log(`Em percentual: ${(percentage * 100).toFixed(0)} %`);
}

let line = require('fs').readFileSync('/dev/stdin', 'utf-8').trim();
let salary = parseFloat(line);
let percentage = readjustmentRate(salary);
let moneyEarned = salary * percentage;
let newSalary = salary + moneyEarned;
formattedPrint(newSalary, moneyEarned, percentage);
