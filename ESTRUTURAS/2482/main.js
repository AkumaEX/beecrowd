function getMessages(n) {
    let messages = {};
    for (let times = 0; times < n; times++) {
        let language = lines[i++].trim();
        let message = lines[i++].trim();
        messages[language] = message;
    }
    return messages;
}

function formattedPrint(m) {
    for (let times = 0; times < m; times++) {
        let name = lines[i++].trim();
        let language = lines[i++].trim();
        console.log(name);
        console.log(messages[language]);
        console.log();
    }
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let n = parseInt(lines[i++]);
let messages = getMessages(n);
let m = parseInt(lines[i++]);
formattedPrint(m);
