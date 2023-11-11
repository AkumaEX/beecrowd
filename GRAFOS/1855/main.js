function getMap(y) {
    let map = [];
    for (let times = 0; times < y; times++) {
        map.push(lines[i++].split(''));
    }
    return map;
}

function mapIsValid(x, y, map) {
    let position = [0, 0];
    visited = [];
    direction = [0, 0];
    while (true) {
        if (_noProblem(position, visited, x, y, map)) {
            if (_chestFound(position, map)) {
                return true;
            }
            visited.push(position);
            direction = _updateDirection(position, map, direction);
            position = _nextPosition(position, direction);
        } else {
            return false;
        }
    }
}

function _noProblem(position, visited, x, y, map) {
    if (!JSON.stringify(visited).includes(JSON.stringify(position))) {
        let [line, column] = position;
        if (line < y && column < x && ['>', '<', 'v', '^', '.', '*'].includes(map[line][column])) {
            return true;
        }
    }
    return false;
}

function _chestFound(position, map) {
    let [line, column] = position;
    return map[line][column] == '*';
}

function _updateDirection(position, map, direction) {
    let [line, column] = position;
    if (map[line][column] == '.') {
        return direction;
    }
    let directions = { '>': [0, 1], '<': [0, -1], 'v': [1, 0], '^': [-1, 0] };
    return directions[map[line][column]];
}

function _nextPosition(position, direction) {
    let [line, column] = position;
    let [lineDirection, columnDirection] = direction;
    return [line + lineDirection, column + columnDirection];
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
var i = 0;
let x = parseInt(lines[i++]);
let y = parseInt(lines[i++]);
let map = getMap(y);
console.log(mapIsValid(x, y, map) ? '*' : '!');
