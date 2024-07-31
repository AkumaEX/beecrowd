max, position = 0, 0
(1..100).each do |i|
  value = gets.to_i
  max, position = value, i if value > max
end
puts max
puts position
