function gcd(a, b) {
  return b === 0 ? a : gcd(b, a % b);
}

var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let n = Number.parseInt(lines[0]);
for (let i = 1; i <= n; i++) {
  [f1, f2] = lines[i].split(" ").map(Number);
  console.log(gcd(f1, f2));
}
