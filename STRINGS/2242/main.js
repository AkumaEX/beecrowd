function isTheFunniest() {
    let vowels = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().replace(/[^aeiou]/g, '');
    return vowels == vowels.split('').reverse().join('');
}

console.log(isTheFunniest() ? 'S' : 'N');
