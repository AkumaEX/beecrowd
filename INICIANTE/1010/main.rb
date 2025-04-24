total = 0
2.times do
  _, quantity, value = gets.split.map(&:to_f)
  total += quantity * value
end
puts "VALOR A PAGAR: R$ %.2f" % total
