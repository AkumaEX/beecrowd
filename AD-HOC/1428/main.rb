# frozen_string_literal:true

t = gets.to_i
t.times do
  n, m = gets.split.map(&:to_i)
  total = (n / 3) * (m / 3)
  puts total
end
