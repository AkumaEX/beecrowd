let days = parseInt(require('fs').readFileSync('/dev/stdin', 'utf-8'));
let years = parseInt(days / 365);
days %= 365;
let months = parseInt(days / 30);
days %= 30;
console.log(`${years} ano(s)`);
console.log(`${months} mes(es)`);
console.log(`${days} dia(s)`);
