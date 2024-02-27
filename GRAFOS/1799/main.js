function buildMaze() {
    let maze = {};
    let links = parseInt(lines[0].split(' ')[1]);
    for (let i = 1; i <= links; i++) {
        let [a, b] = lines[i].split(' ');
        maze[a] = (maze[a] || []).concat(b);
        maze[b] = (maze[b] || []).concat(a);
    }
    return maze;
}

function minimumPoints(maze, target, queue, visited) {
    let nextQueue = [];
    for (let node of queue) {
        if (!visited.has(node)) {
            visited.add(node);
            if (maze[node].includes(target)) {
                return 1;
            }
            nextQueue = nextQueue.concat(maze[node]);
        }
    }
    return 1 + minimumPoints(maze, target, nextQueue, visited);
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let maze = buildMaze();
let pointsToCheese = minimumPoints(maze, '*', ['Entrada'], new Set());
let pointsToExit = minimumPoints(maze, 'Saida', ['*'], new Set());
console.log(pointsToCheese + pointsToExit);
