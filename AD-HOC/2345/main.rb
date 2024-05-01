# frozen_string_literal:true

def difference(a, b, c, d)
  (a - b - c + d).abs
end

a, b, c, d = gets.split.map(&:to_i)
puts difference(a, b, c, d)
