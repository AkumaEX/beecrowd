n = gets.to_i
(1..10000).each do |num|
  puts num if num % n == 2
end
