def prob(ev1, ev2, at, d)
  i = (ev1.to_f / d).ceil
  n = (ev2.to_f / d).ceil + i
  r = (6 - at).to_f / at
  return i.to_f / n if at == 3
  (1 - r**i).to_f / (1 - r**n)
end

ev1, ev2, at, d = gets.split.map(&:to_i)
while !ev1.zero? && !ev2.zero? && !at.zero? && !d.zero?
  p = prob(ev1, ev2, at, d) * 100
  puts p.round(1)
  ev1, ev2, at, d = gets.split.map(&:to_i)
end
