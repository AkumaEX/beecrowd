def inside(ax, ay, cx, cy, rx, ry)
  (ax <= rx && rx <= cx && ay <= ry && ry <= cy) ? 1 : 0
end

n = gets.to_i
n.times do
  ax, ay, _, _, cx, cy, _, _, rx, ry = gets.split.map(&:to_i)
  puts inside(ax, ay, cx, cy, rx, ry)
end
