function isCorrect(expression) {
    let stack = [];
    for (let c of expression) {
        if (c == '(') {
            stack.push(c);
        } else if (c == ')') {
            if (!stack.pop()) return false;
        }
    }
    return !stack.length;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').trim().split('\n');
for (let expression of lines) {
    console.log(isCorrect(expression) ? 'correct' : 'incorrect');
}
