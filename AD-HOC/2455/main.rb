# frozen_string_literal:true

def balance(p1, c1, p2, c2)
  left = p1 * c1
  right = p2 * c2
  return -1 if left > right
  return 1 if right > left

  0
end

p1, c1, p2, c2 = gets.split.map(&:to_i)
puts balance(p1, c1, p2, c2)
