function getMaze(n) {
    let maze = [];
    while (n--)
        maze.push(lines.shift());
    return maze;
}

function getMaxFood(n, maze) {
    let maxFood = 0;
    let food = 0;
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < n; j++) {
            let position = maze[i][i % 2 === 0 ? j : n - 1 - j];
            if (position == 'o') food++;
            else if (position == 'A') {
                if (food > maxFood) maxFood = food;
                food = 0;
            }
        }
    }
    return food > maxFood ? food : maxFood;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift());
let maze = getMaze(n);
console.log(getMaxFood(n, maze));
