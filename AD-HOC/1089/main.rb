# frozen_string_literal: true

while (n = gets.to_i) != 0
  h = gets.split.map(&:to_i)
  directions = []
  (0..n - 1).each do |i|
    is_ascending = (h[(i + 1) % n] - h[i]).positive?
    directions[i] = is_ascending
  end
  peaks = 0
  (0..n - 1).each do |i|
    direction_change = directions[(i + 1) % n] != directions[i]
    peaks += 1 if direction_change
  end
  puts peaks
end
