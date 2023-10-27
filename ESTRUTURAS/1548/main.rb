# frozen_string_literal:true

def num_same_place
  m = gets.to_i
  p = gets.split.map(&:to_i)
  p_sorted = p.sort.reverse
  same_place = 0
  m.times do |i|
    same_place += 1 if p[i] == p_sorted[i]
  end
  same_place
end

n = gets.to_i
n.times do
  puts num_same_place
end
