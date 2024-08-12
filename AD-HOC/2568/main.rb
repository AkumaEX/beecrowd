def predict(d, i, x, f)
  return i - (f % 2) * x if d.even?
  i + (f % 2) * x
end

d, i, x, f = gets.split.map(&:to_i)
puts predict(d, i, x, f)
