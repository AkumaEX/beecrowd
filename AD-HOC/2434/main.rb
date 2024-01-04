# frozen_string_literal:true

n, s = gets.split.map(&:to_i)
min = s
n.times do
  s += gets.to_i
  min = s if s < min
end
puts min
