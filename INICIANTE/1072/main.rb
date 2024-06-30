in_interval = 0
n = gets.to_i
n.times do
  x = gets.to_i
  in_interval += 1 if x >= 0 && x <= 20
end
puts "#{in_interval} in"
puts "#{n - in_interval} out"
