# frozen_string_literal: true

n = gets.to_i
n.times do
  x = gets.to_i
  grains = 2**x
  weight = (grains / 12) / 1000
  puts "#{weight} kg"
end
