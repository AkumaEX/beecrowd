function translate(line) {
    line = line.replace(/_(.*?)_/g, '<i>$1</i>');
    return line.replace(/\*(.*?)\*/g, '<b>$1</b>');
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n');
let i = 0;
let line;
while (line = lines[i++]) 
    console.log(translate(line));
