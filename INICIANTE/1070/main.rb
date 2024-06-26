x = gets.to_i
x = x + 1 - x % 2
(x...x + 11).step(2).each do |odd|
  puts odd
end
