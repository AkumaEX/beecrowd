var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

lines.forEach(function (line) {
  if (line) {
    [a, b] = line.split(" ").map(Number);
    console.log(a ^ b);
  }
});
