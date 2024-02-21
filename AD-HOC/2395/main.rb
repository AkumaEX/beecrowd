# frozen_string_literal:true

def max_containers(a, b, c, x, y, z)
  (x / a) * (y / b) * (z / c)
end

a, b, c = gets.split.map(&:to_i)
x, y, z = gets.split.map(&:to_i)
puts max_containers(a, b, c, x, y, z)
