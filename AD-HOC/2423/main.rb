# frozen_string_literal:true

def max_cakes(a, b, c)
  [a / 2, b / 3, c / 5].min
end

a, b, c = gets.split.map(&:to_i)
puts max_cakes(a, b, c)
