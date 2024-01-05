# frozen_string_literal:true

def fits?(n, a, l, p)
  n <= a && n <= l && n <= p
end

n = gets.to_i
a, l, p = gets.split.map(&:to_i)
puts fits?(n, a, l, p) ? 'S' : 'N'
