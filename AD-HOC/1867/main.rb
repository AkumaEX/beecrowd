def transform(number)
  while number.length > 1
    number = number.chars.map(&:to_i).sum.to_s
  end
  number
end

def compare(m, n)
  return 1 if m.to_i > n.to_i
  return 2 if m.to_i < n.to_i
  0
end

m, n = gets.split
while m != "0" || n != "0"
  puts compare(transform(m), transform(n))
  m, n = gets.split
end
