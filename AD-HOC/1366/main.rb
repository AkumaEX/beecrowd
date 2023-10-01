# frozen_string_literal:true

while (n = gets.to_i) != 0
  pairs = 0
  n.times do
    _, v = gets.split.map(&:to_i)
    pairs += v / 2
  end
  rectangles = pairs / 2
  puts rectangles
end
