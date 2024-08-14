def total(n, a, b)
  n / a + n / b - n / a.lcm(b)
end

n, a, b = gets.split.map(&:to_i)
while n.positive?
  puts total(n, a, b)
  n, a, b = gets.split.map(&:to_i)
end
