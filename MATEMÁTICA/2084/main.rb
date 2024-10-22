def results(v)
  v.sort!.reverse!
  total = v.sum
  return 1 if v[0] >= total * 0.45 || v[0] >= total * 0.4 && v[0] - v[1] >= total * 0.1
  2
end

gets
v = gets.split.map(&:to_i)
puts results(v)
