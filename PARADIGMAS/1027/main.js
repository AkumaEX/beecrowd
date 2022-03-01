function lis(a, b) {
  if (a.length && !b.length) return 1;
  if (!a.length) return 0;
  if (a[0] == b[0]) return 1 + lis(b.slice(1), a.slice(1));
  if (a[0] < b[0]) return 1 + lis(b, a.slice(1));
  return lis(a, b.slice(1));
}

input = require("fs").readFileSync("/dev/stdin", "utf-8");
var lines = input.split("\n");

let i = 0;
while (i < lines.length) {
  let y_ax = {};
  let points = [];
  let n = Number.parseInt(lines[i++]);
  for (let j = 0; j < n; j++) {
    let [x, y] = lines[i++].split(" ").map(Number);
    (y_ax[y] || (y_ax[y] = [])).push(x);
  }
  for (let [y, x_up] of Object.entries(y_ax)) {
    x_down = y_ax[y - 2] || [];
    ascending = (a, b) => a - b;
    points.push(lis(x_up.sort(ascending), x_down.sort(ascending)));
    points.push(lis(x_down.sort(ascending), x_up.sort(ascending)));
  }
  console.log(Math.max(...points));
}
