def sum_between(x, y)
  x, y = y, x if x > y
  (x..y).filter { |n| (n % 13).nonzero? }.sum
end

x = gets.to_i
y = gets.to_i
puts sum_between(x, y)
