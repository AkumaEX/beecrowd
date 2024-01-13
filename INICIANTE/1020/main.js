function printFormatted(days) {
    let years = parseInt(days / 365);
    days = days % 365;
    let months = parseInt(days / 30);
    days = days % 30;
    console.log(`${years} ano(s)`);
    console.log(`${months} mes(es)`);
    console.log(`${days} dia(s)`);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let days = parseInt(lines[0]);
printFormatted(days);
