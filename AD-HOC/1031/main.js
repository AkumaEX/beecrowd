let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
let lines = input.split('\n').map(Number);

for (let n of lines) {
    if (n != 0) {
        for (m = 1; m < Infinity; m ++) {
            let regions = Array.from({length: n}, (_, index) => index + 1);
            let selected = 0;
            while (regions.length > 1) {
                let region = regions.splice(selected, 1);
                if (region == 13) {
                    break;
                }
                selected = (selected + m - 1) % regions.length;
            }
            if (regions[0] == 13) {
                console.log(m);
                break;
            }
        }
    }

}
