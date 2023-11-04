function getMaxBalls(numPegs, lookUp) {
    if (numPegs in lookUp) {
        return Math.max(... lookUp[numPegs]);
    }
    let [currentState, currentBall] = _loadLastState(lookUp);
    while (currentState.length <= numPegs) {
        currentBall += 1;
        if (!_updateCurrentState(currentBall, currentState)) {
            _saveCurrentState(currentState, lookUp);
            currentState.push(currentBall);
        }
    }
    return currentBall - 1;
}

function _updateCurrentState(currentBall, currentState) {
    for (let [peg, lastBall] of currentState.entries()) {
        let isSquareNumber = (Math.pow(lastBall + currentBall, 0.5) % 1) === 0;
        if (isSquareNumber) {
            currentState[peg] = currentBall;
            return true;
        }
    }
    return false;
}

function _loadLastState(lookUp) {
    let pegs = Object.keys(lookUp);
    let lastState = pegs.length ? lookUp[Math.max(... pegs)] : [];
    let lastBall = lastState.length ? Math.max(... lastState) : 0;
    return [lastState, lastBall];
}

function _saveCurrentState(currentState, lookUp) {
    lookUp[currentState.length] = [... currentState];
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');

let lookUp = {};
let t = parseInt(lines[0]);
for (let i = 1; i <= t; i++) {
    let numPegs = parseInt(lines[i]);
    console.log(getMaxBalls(numPegs, lookUp));
}
