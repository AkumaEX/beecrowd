def start_end(x, y)
  (x < y) ? [x + 1, y] : [y + 1, x]
end

def evens_total(start, end_)
  total = 0
  (start...end_).each { |num| total += num if (num % 2).nonzero? }
  total
end

x = gets.to_i
y = gets.to_i
start, end_ = start_end(x, y)
puts evens_total(start, end_)
