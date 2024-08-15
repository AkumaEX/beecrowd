function getDistance(x1, y1, x2, y2) {
    return Math.sqrt(Math.pow(x1 - x2, 2) + Math.pow(y1 - y2, 2));
}

function nearest(n, balls) {
    let minDistance = getDistance(balls[0][0], balls[0][1], 1420, 2840);
    let nearestBall = 0;
    for (let ball = 1; ball < n + 1; ball++) {
        let distance = getDistance(balls[0][0], balls[0][1], balls[ball][0], balls[ball][1]);
        if (distance < minDistance) {
            minDistance = distance;
            nearestBall = ball;
        }
    }
    return nearestBall;
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let c = parseInt(lines.shift());
while (c--) {
    let n = parseInt(lines.shift());
    let balls = [];
    for (let i = 0; i < n + 1; i++) balls.push(lines.shift().split(' ').map(Number));
    console.log(nearest(n, balls));
}
