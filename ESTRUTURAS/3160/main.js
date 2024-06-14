function newList(l, n, x) {
    if (l.includes(x)) {
        let i = l.indexOf(x);
        l.splice(i, 0, ...n)
        return l.join(' ');
    }
    return l.concat(n).join(' ');
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let l = lines.shift().trim().split(' ');
let n = lines.shift().trim().split(' ');
let x = lines.shift().trim();
console.log(newList(l, n, x));
