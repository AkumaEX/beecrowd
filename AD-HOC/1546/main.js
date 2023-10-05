let members = {
    1: 'Rolien',
    2: 'Naej',
    3: 'Elehcim',
    4: 'Odranoel'
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let n = parseInt(lines[i++]);
for (let days = 0; days < n; days++) {
    let k = parseInt(lines[i++]);
    for (let feedbacks = 0; feedbacks < k; feedbacks++) {
        let feedback = parseInt(lines[i++]);
        console.log(members[feedback]);
    }
}
