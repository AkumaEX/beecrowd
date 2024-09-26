def is_possible(b, n)
  banks = gets.split.map(&:to_i)
  n.times do
    d, c, v = gets.split.map(&:to_i)
    banks[d - 1] -= v
    banks[c - 1] += v
  end
  banks.each do |reserve|
    return false if reserve.negative?
  end
  true
end

b, n = gets.split.map(&:to_i)
while b.nonzero? || n.nonzero?
  puts is_possible(b, n) ? "S" : "N"
  b, n = gets.split.map(&:to_i)
end
