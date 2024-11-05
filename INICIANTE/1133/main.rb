x = gets.to_i
y = gets.to_i
x, y = y, x if x > y
(x + 1...y).each do |n|
  puts n if n % 5 == 2 || n % 5 == 3
end
