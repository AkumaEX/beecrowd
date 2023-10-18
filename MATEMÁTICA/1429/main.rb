# frozen_string_literal:true

def decimal(acm)
  factorial = [1, 1, 2, 6, 24, 120]
  result = 0
  i = 1
  while acm.positive?
    digit = acm % 10
    result += digit * factorial[i]
    i += 1
    acm /= 10
  end
  result
end

while (acm = gets.to_i).nonzero?
  puts decimal(acm)
end
