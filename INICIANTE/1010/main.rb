total = 0
while line = gets
    data = line.split
    quantity, value = data[1].to_i, data[2].to_f
    total += quantity * value
end
puts "VALOR A PAGAR: R$ %.2f" % total
