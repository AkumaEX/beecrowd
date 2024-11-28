function printSorted(issues) {
    for (let issue of issues.sort((a, b) => b[1].localeCompare(a[1]) || b[0].localeCompare(a[0])))
        console.log(issue);
}

let issues = [];
let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let n = parseInt(lines.shift().split(' ')[0]);
while (n--)
    issues.push(...lines.shift().split(' '));
printSorted(issues);
