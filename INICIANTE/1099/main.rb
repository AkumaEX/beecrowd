def get_xy
  a, b = gets.split.map(&:to_i)
  a, b = b, a if a > b
  [a + 1, b]
end

def sum_odds(x, y)
  total = 0
  (x...y).each do |num|
    total += num if num.odd?
  end
  total
end

n = gets.to_i
n.times do
  x, y = get_xy
  puts sum_odds(x, y)
end
