# frozen_string_literal:true

def smallest_factorial_sum(n)
  k = 0
  factorials = [40_320, 5040, 720, 120, 24, 6, 2, 1]
  factorials.each do |a|
    while n >= a
      n -= a
      k += 1
    end
    return k if n.zero?
  end
end

n = gets.to_i
puts smallest_factorial_sum(n)
