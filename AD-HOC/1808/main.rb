total = 0
n = 0
s = gets.to_i
while s.positive?
  digit = s % 10
  if digit.positive?
    total += digit
  else
    s /= 10
    total += 10
  end
  s /= 10
  n += 1
end
puts format("%.2f", total.to_f / n)
