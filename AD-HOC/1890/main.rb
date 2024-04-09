# frozen_string_literal:true

def num_plates(c, d)
  c.nonzero? || d.nonzero? ? 26**c * 10**d : 0
end

t = gets.to_i
t.times do
  c, d = gets.split.map(&:to_i)
  puts num_plates(c, d)
end
