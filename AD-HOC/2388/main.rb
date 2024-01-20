# frozen_string_literal:true

distance = 0
n = gets.to_i
n.times do
  t, v = gets.split.map(&:to_i)
  distance += t * v
end
puts distance
