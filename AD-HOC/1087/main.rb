# frozen_string_literal: true

def diagonal_search(x1, y1, x2, y2, h, v)
  return false if x1 < 1 || x1 > 8 || y1 < 1 || y1 > 8
  return true if x1 == x2 && y1 == y2

  diagonal_search(x1 + h, y1 + v, x2, y2, h, v)
end

x1, y1, x2, y2 = gets.split.map(&:to_i)
while x1.positive?
  if x1 == x2 && y1 == y2
    puts 0
  elsif x1 == x2 || y1 == y2 ||
        diagonal_search(x1, y1, x2, y2, -1, -1) ||
        diagonal_search(x1, y1, x2, y2, -1, 1) ||
        diagonal_search(x1, y1, x2, y2, 1, -1) ||
        diagonal_search(x1, y1, x2, y2, 1, 1)
    puts 1
  else
    puts 2
  end
  x1, y1, x2, y2 = gets.split.map(&:to_i)
end
