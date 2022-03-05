def gcd(a, b)
  b.zero? ? a : gcd(b, a % b)
end

gets.to_i.times do
  f1, f2 = gets.split.map(&:to_i)
  puts gcd(f1, f2)
end
