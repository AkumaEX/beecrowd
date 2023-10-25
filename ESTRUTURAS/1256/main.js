function getHashTable(m) {
    let hashTable = Array.from(Array(m), () => []);
    let keys = lines[i++].split(' ').map(Number);
    for (let key of keys) {
        hashTable[key % m].push(key);
    }
    return hashTable;
}

function printFormatted(hashTable) {
    for (let [i, keys] of hashTable.entries()) {
        process.stdout.write(`${i} -> `);
        for (let key of keys) {
            process.stdout.write(`${key} -> `)
        }
        console.log('\\');
    }
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let n = parseInt(lines[i++]);
for (let times = 0; times < n; times++) {
    let [m, c] = lines[i++].split(' ').map(Number);
    let hashTable = getHashTable(m);
    printFormatted(hashTable);
    if (times < n - 1) {
        console.log();
    }
}
