var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let a = Number.parseFloat(lines[0]);
let b = Number.parseFloat(lines[1]);
let media = (a * 3.5 + b * 7.5) / 11;
console.log(`MEDIA = ${media.toFixed(5)}`);
