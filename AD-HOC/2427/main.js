function total(l) {
    return Math.pow(2, 2 * Math.floor(Math.log2(l)));
}

let l = parseInt(require('fs').readFileSync('/dev/stdin', 'utf-8'));
console.log(total(l));
