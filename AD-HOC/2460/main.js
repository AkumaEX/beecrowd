let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let queue = lines[1].split(' ');
for (let person of lines[3].split(' '))
    queue.splice(queue.indexOf(person), 1);
console.log(queue.join(' '));
