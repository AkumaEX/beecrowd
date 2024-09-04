def formatted_print(x, y)
  puts y.nonzero? ? format("%.1f", x.to_f / y) : "divisao impossivel"
end

n = gets.to_i
n.times do
  x, y = gets.split.map(&:to_i)
  formatted_print(x, y)
end
