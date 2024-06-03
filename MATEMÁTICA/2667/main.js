let n = BigInt(require('fs').readFileSync('/dev/stdin', 'utf-8').trim());
console.log((n % BigInt(3)).toString());
