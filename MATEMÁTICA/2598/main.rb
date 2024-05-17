# frozen_string_literal:true

def num_radars(n, m)
  (n.to_f / m).ceil
end

c = gets.to_i
c.times do
  n, m = gets.split.map(&:to_i)
  puts num_radars(n, m)
end
