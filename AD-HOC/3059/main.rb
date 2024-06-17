# frozen_string_literal:true

def total_pairs(n, i, f, vector)
  total = 0
  (0...n - 1).each do |p|
    (p + 1...n).each do |q|
      pair = vector[p] + vector[q]
      total += 1 if i <= pair && pair <= f
    end
  end
  total
end

n, i, f = gets.split.map(&:to_i)
vector = gets.split.map(&:to_i)
puts total_pairs(n, i, f, vector)
