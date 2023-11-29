# frozen_string_literal:true

n = gets.to_i
n.times do
  x, y = gets.split.map(&:to_i)
  area = x * y / 2
  puts "#{area} cm2"
end
