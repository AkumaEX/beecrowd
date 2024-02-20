# frozen_string_literal:true

total = 0
n = gets.to_i
n.times do
  l, c, = gets.split.map(&:to_i)
  total += l > c ? c : 0
end
puts total
