# frozen_string_literal:true

def print_formatted(n)
  puts n
  [100, 50, 20, 10, 5, 2, 1].each do |bill|
    puts "#{n / bill} nota(s) de R$ #{bill},00"
    n = n % bill
  end
end

n = gets.to_i
print_formatted(n)
