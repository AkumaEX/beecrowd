name = gets
salary = gets.to_f
sales = gets.to_f
total = salary + sales * 0.15
puts 'TOTAL = R$ %.2f' % total