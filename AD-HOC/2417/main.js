function topTeam(cv, ce, cs, fv, fe, fs) {
    let cScore = 3 * cv + ce;
    let fScore = 3 * fv + fe;
    if (cScore == fScore) {
        cScore += cs;
        fScore += fs;
    }
    if (cScore > fScore) {
        return 'C';
    } else if (fScore > cScore) {
        return 'F';
    }
    return '=';
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let [cv, ce, cs, fv, fe, fs] = lines[0].split(' ').map(Number);
console.log(topTeam(cv, ce, cs, fv, fe, fs));
