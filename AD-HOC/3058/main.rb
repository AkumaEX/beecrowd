# frozen_string_literal:true

prices = []
n = gets.to_i
n.times do
  p, g = gets.split.map(&:to_f)
  prices.push(1000 * p / g)
end
prices.sort!
puts format('%.2f', prices.first)
