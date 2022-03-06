function prob(ev1, ev2, at, d) {
  let i = Math.ceil(ev1 / d);
  let n = Math.ceil(ev2 / d) + i;
  let r = (6 - at) / at;
  if (at === 3) return i / n;
  return (1 - Math.pow(r, i)) / (1 - Math.pow(r, n));
}

var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

for (let line of lines) {
  let [ev1, ev2, at, d] = line.split(" ").map(Number);
  if (ev1 === 0 && ev2 === 0 && at === 0 && d === 0) break;
  let p = prob(ev1, ev2, at, d) * 100;
  console.log(p.toFixed(1));
}
