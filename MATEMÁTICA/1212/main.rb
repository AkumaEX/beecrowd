def total_carries(a, b)
  carry, carries = 0, 0
  while a.positive? || b.positive?
    carry = (carry + a % 10 + b % 10) / 10
    carries += carry
    a, b = a / 10, b / 10
  end
  carries
end

def formatted_print(carries)
  if carries.nonzero?
    puts "#{carries} carry operation#{(carries > 1) ? "s" : ""}."
  else
    puts "No carry operation."
  end
end

a, b = gets.split.map(&:to_i)
while a.positive? || b.positive?
  carries = total_carries(a, b)
  formatted_print(carries)
  a, b = gets.split.map(&:to_i)
end
