def gcd(a, b)
  return a if b.zero?
  gcd(b, a % b)
end

def lcm(a, b)
  a * b / gcd(a, b)
end

def next_alignment(m, l1, l2, l3)
  lcm(lcm(l1, l2), l3) - m
end

while (m = gets&.to_i)
  l1, l2, l3 = gets.split.map(&:to_i)
  puts next_alignment(m, l1, l2, l3)
end
