function canKeepProject(areas) {
    areas.sort((a, b) => a - b);
    return areas[0] * areas[3] === areas[1] * areas[2];
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let areas = lines[0].split(' ').map(Number);
console.log(canKeepProject(areas) ? 'S' : 'N');