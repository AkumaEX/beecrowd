# frozen_string_literal:true

while (n = gets.to_i) != 0
  start = gets.split.map(&:to_i)
  finish = gets.split.map(&:to_i)
  overtakes = 0
  (0..n - 1).each do |position|
    next unless finish[position] != start[position]

    before = start.index(finish[position])
    start.insert(position, start.delete_at(before))
    overtakes += before - position
  end
  puts overtakes
end
