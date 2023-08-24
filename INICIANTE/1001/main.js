var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let a = Number.parseInt(lines[0]);
let b = Number.parseInt(lines[1]);
let x = a + b;
console.log(`X = ${x}`);
