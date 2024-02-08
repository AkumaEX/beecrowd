# frozen_string_literal:true

def total_cost(l, d, k, p)
  distance = l * k
  tolls = (l / d) * p
  distance + tolls
end

l, d = gets.split.map(&:to_i)
k, p = gets.split.map(&:to_i)
puts total_cost(l, d, k, p)
