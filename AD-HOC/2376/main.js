function worldChampion() {
    let teams = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P'];
    for (let knockout of [8, 4, 2, 1]) {
        teams = _results(teams, knockout);
    }
    return teams[0];
}

function _results(teams, knockout) {
    for (let teamM = 0, teamN = 1; teamM < knockout; teamM++, teamN++) {
        let [m, n] = lines[i++].split(' ').map(Number);
        teams.splice(m > n ? teamN : teamM, 1)
    }
    return teams;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
console.log(worldChampion());
