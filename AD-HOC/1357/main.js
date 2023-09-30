fromB = {
    '*.': {
        '..': '1',
        '*.': '2',
        '.*': '5',
        '**': '8'
    },
    '**': {
        '..': '3',
        '*.': '6',
        '.*': '4',
        '**': '7'
    },
    '.*': {
        '*.': '9',
        '**': '0'
    }
}

toB = {
    '1': {
        0: '*.',
        1: '..',
        2: '..'
    },
    '2': {
        0: '*.',
        1: '*.',
        2: '..'
    },
    '3': {
        0: '**',
        1: '..',
        2: '..'
    },
    '4': {
        0: '**',
        1: '.*',
        2: '..'
    },
    '5': {
        0: '*.',
        1: '.*',
        2: '..'
    },
    '6': {
        0: '**',
        1: '*.',
        2: '..'
    },
    '7': {
        0: '**',
        1: '**',
        2: '..'
    },
    '8': {
        0: '*.',
        1: '**',
        2: '..'
    },
    '9': {
        0: '.*',
        1: '*.',
        2: '..'
    },
    '0': {
        0: '.*',
        1: '**',
        2: '..'
    }
}

function translateFromB(d) {
    let sentence = [];
    for (let times = 0; times < 3; times++) {
        sentence.push(lines[i++].split(' '))
    }
    for (let cell = 0; cell < d; cell++) {
        let topCell = sentence[0][cell];
        let midCell = sentence[1][cell];
        let separator = cell < d - 1 ? '' : '\n';
        process.stdout.write(fromB[topCell][midCell] + separator);
    }
}

function translateToB(d) {
    let sentence = lines[i++];
    for (let line = 0; line < 3; line++) {
        for (let digit = 0; digit < d; digit++) {
            let num = sentence[digit];
            let separator = digit < d - 1 ? ' ' : '\n';
            process.stdout.write(toB[num][line] + separator);
        }
    }
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let d;
while ((d = parseInt(lines[i++])) !== 0) {
    lines[i++].trim() == 'B' ? translateFromB(d) : translateToB(d);
}
