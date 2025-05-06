let n = parseInt(require('fs').readFileSync('/dev/stdin', 'utf-8').trim());
let hours = parseInt(n / 3600);
n = n % 3600;
let minutes = parseInt(n / 60);
let seconds = n % 60;
console.log(`${hours}:${minutes}:${seconds}`);
