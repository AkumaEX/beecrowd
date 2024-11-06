def is_smaller(a, b, c, d)
  a < c && b < d || a < d && b < c
end

n = gets.to_i
n.times do
  a, b, c, d = gets.split.map(&:to_i)
  puts is_smaller(a, b, c, d) ? "S" : "N"
end
