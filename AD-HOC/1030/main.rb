# frozen_string_literal: true

def survivor(n, k)
  return 1 if n == 1

  ((survivor(n - 1, k) + k - 1) % n) + 1
end

nc = gets.to_i
(1..nc).each do |i|
  n, k = gets.split.map(&:to_i)
  puts "Case #{i}: #{survivor(n, k)}"
end
