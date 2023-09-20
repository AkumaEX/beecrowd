# frozen_string_literal:true

n = gets.to_i
n.times do
  t = gets.to_i
  shoot = gets.split.map(&:to_i)
  jump = gets
  hit = 0
  (0..(t - 1)).each do |i|
    hit += 1 if shoot[i] > 2 && jump[i] == 'J' || shoot[i] < 3 && jump[i] == 'S'
  end
  puts hit
end
