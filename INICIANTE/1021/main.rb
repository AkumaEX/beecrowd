n = gets.to_f + 0.0001
puts "NOTAS:"
[100, 50, 20, 10, 5, 2].each do |bill|
  puts "#{(n / bill).to_i} nota(s) de R$ #{"%.2f" % bill}"
  n %= bill
end
puts "MOEDAS:"
[1, 0.50, 0.25, 0.10, 0.05, 0.01].each do |coin|
  puts "#{(n / coin).to_i} moeda(s) de R$ #{"%.2f" % coin}"
  n %= coin
end
