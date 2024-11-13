def num_lasers(a, c, x)
  lasers = a - x.first
  (1...c).each do |i|
    lasers += x[i - 1] - x[i] if x[i - 1] > x[i]
  end
  lasers
end

a, c = gets.split.map(&:to_i)
while a.nonzero? || c.nonzero?
  x = gets.split.map(&:to_i)
  puts num_lasers(a, c, x)
  a, c = gets.split.map(&:to_i)
end
