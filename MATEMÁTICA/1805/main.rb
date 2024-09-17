def sum_between(a, b)
  (a + b) * (b - a + 1) / 2
end

a, b = gets.split.map(&:to_i)
puts sum_between(a, b)
