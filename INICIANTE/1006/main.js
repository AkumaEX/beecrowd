var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let a = Number.parseFloat(lines[0]);
let b = Number.parseFloat(lines[1]);
let c = Number.parseFloat(lines[2]);
let media = (a * 2 + b * 3 + c * 5) / 10;
console.log(`MEDIA = ${media.toFixed(1)}`);
