let r = parseFloat(require('fs').readFileSync('/dev/stdin', 'utf-8'));
let volume = (4 / 3) * 3.14159 * Math.pow(r, 3);
console.log(`VOLUME = ${volume.toFixed(3)}`);
