prices = [0.0, 4.0, 4.5, 5.0, 2.0, 1.5]
code, quantity = gets.split.map(&:to_i)
puts "Total: R$ %.2f" % (prices[code] * quantity)
