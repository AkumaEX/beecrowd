# frozen_string_literal:true

def get_edge_size(a, b, c)
  edge_size = (a * b * c)**(1.0 / 3)
  edge_size.to_i
end

a, b, c = gets.split.map(&:to_i)
while a.nonzero? && b.nonzero? && c.nonzero?
  puts get_edge_size(a, b, c)
  a, b, c = gets.split.map(&:to_i)
end
