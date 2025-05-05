n = gets.to_i
puts n
[100, 50, 20, 10, 5, 2, 1].each do |bill|
  puts "#{n / bill} nota(s) de R$ #{bill},00"
  n %= bill
end
