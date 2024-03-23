# frozen_string_literal:true

t = gets.to_i
t.times do |i|
  n, *ages = gets.split.map(&:to_i)
  puts "Case #{i + 1}: #{ages[n / 2]}"
end
