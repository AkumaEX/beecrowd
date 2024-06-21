def print_values(v, p)
  value = v / p
  adjustment = v % p
  p.times do |i|
    puts (i < adjustment) ? value + 1 : value
  end
end

v = gets.to_i
p = gets.to_i
print_values(v, p)
