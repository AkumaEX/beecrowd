# frozen_string_literal:true

def withdraw(bits)
  bills = [0, 0, 0, 0]
  bills[0] = bits / 50
  bits %= 50
  bills[1] = bits / 10
  bits %= 10
  bills[2] = bits / 5
  bills[3] = bits % 5
  bills
end

def print_formatted(test, bills)
  puts "Teste #{test}"
  puts bills.join(' ')
  puts
end

test = 1
while (v = gets.to_i).nonzero?
  bills = withdraw(v)
  print_formatted(test, bills)
  test += 1
end
