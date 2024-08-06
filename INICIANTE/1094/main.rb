def formatted_print(quantities)
  total = quantities["C"] + quantities["R"] + quantities["S"]
  puts "Total: %d cobaias" % total
  puts "Total de coelhos: %d" % quantities["C"]
  puts "Total de ratos: %d" % quantities["R"]
  puts "Total de sapos: %d" % quantities["S"]
  puts "Percentual de coelhos: %.2f %%" % (100 * quantities["C"] / total)
  puts "Percentual de ratos: %.2f %%" % (100 * quantities["R"] / total)
  puts "Percentual de sapos: %.2f %%" % (100 * quantities["S"] / total)
end

quantities = {"C" => 0, "R" => 0, "S" => 0}
n = gets.to_i
n.times do
  quantity, type = gets.split
  quantities[type] += quantity.to_f
end
formatted_print(quantities)
