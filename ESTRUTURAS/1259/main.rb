# frozen_string_literal:true

even = []
odd = []
n = gets.to_i
n.times do
  num = gets.to_i
  (num % 2).zero? ? even.push(num) : odd.push(num)
end
even.sort!
odd.sort!.reverse!
(even + odd).each do |num|
  puts num
end
