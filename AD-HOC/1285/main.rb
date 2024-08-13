require "set"

def max_quantity(m, n)
  quantity = n - m + 1
  (m..n).map(&:to_s).each do |num|
    quantity -= 1 if num.chars.to_set.length != num.length
  end
  quantity
end

while (line = gets)
  m, n = line.split.map(&:to_i)
  puts max_quantity(m, n)
end
