# frozen_string_literal:true

max_sequence = 1
n = $stdin.readline.to_i
v = $stdin.readlines
(n - 1).times do |i|
  max_sequence += 1 if v[i] != v[i + 1]
end
puts max_sequence
